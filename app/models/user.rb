class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :gender, presence: true
  validates :first_name, presence: true, length: {minimum: 2, maximum: 15}, format: { with: /\A(\w|\s)+\z/, message: "Invalid Characters." }
  validates :last_name, presence: true, length: {minimum: 2, maximum: 15}, format: { with: /\A(\w|\s)+\z/, message: "Invalid Characters." }
  validates :member, presence: true
  validates :email, presence: true, format: { with: /\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b/, message: "Not a valid email." }
  validates :avatar, presence: true
  validates :job, presence: true
  validates :whatsapp, presence: true, format: { with: /^[0-9]*$/, message: 'Please, only numbers.' }
  validates :linkedin, presence: true, format: { with: /(linkedin.com\/)(in\/)?(company\/)?\w+/, message: "https://www.linkedin.com/in/YOUR-USERNAME-HERE/" }
  validates :company, presence: true
  validates :activity, presence: true
  validates :country, presence: true
  validates :website, presence: true, format: { with: /((w{3}\.)|(https?:\/\/))?[a-zA-Z]+\.[a-zA-Z]*\.?[a-zA-Z]*\/?(.?)*/, message: "Must be a valid format." }
  validates :phone, presence: true

  has_one :pitching, dependent: :destroy
  has_one :identity, dependent: :destroy
  has_many :newsletters

  has_one_attached :avatar
  has_many :orders, dependent: :destroy
  has_many :chatrooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  attribute :status, :string, default: 'pending'

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :omniauthable, omniauth_providers: %i[linkedin]

  after_create :send_admin_mail

  before_create :regex_linkedin, :regex_website

  private

  def regex_linkedin
    matchdata = linkedin.match(/com(\/in)?\/(?<username>.+)\/?$/)
    if linkedin.include?('.com/company')
      self.linkedin = "https://www.linkedin.com/#{matchdata[:username].downcase.gsub(/\\|!|;|@|<|>/, '')}"
    else
      self.linkedin = "https://www.linkedin.com/in/#{matchdata[:username].downcase.gsub(/\\|!|;|@|<|>/, '')}"
    end
  end

  def regex_website
    matchdata = website.match(/(?<website>\w+\.\w+\.?.*)/)
    if website.include?('www.')
      self.website = "http://#{matchdata[:website].downcase.gsub(/\\|!|;|@|<|>/, '')}"
    else
      self.website = "http://www.#{matchdata[:website].downcase.gsub(/\\|!|;|@|<|>/, '')}"
    end
  end

  def send_admin_mail
    self.update(full_name: "#{first_name} #{last_name}")
    # Identity.create(user_id: self.id)
    AdminMailer.with(user: self).new_user_waiting_for_approval.deliver_now
    AdminMailer.with(user: self).new_user_welcome.deliver_now
    # AdminMailer.new_user_waiting_for_approval(email).deliver_now
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.linkedin_data"] && session["devise.linkedin_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.linkedin_picture_url = auth.info.picture_url
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
