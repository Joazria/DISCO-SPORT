class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :company, presence: true
  has_one :pitchings
  has_one_attached :avatar
  has_many :orders

  attribute :status, :string, default: 'pending'

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  after_create :send_admin_mail

  #  include PgSearch::Model
  # pg_search_scope :search_by_name,
  #   against: [[ :last_name , 'A']],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  private

  def send_admin_mail
    User.find(self.id).update(full_name: "#{first_name} #{last_name}")
    AdminMailer.with(user: self).new_user_waiting_for_approval.deliver_now
    AdminMailer.with(user: self).new_user_welcome.deliver_now
    # AdminMailer.new_user_waiting_for_approval(email).deliver_now
  end
end
