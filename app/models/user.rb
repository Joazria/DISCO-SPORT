class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence:true
  validates :company, presence:true

  has_one_attached :avatar

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  after_create :send_admin_mail

  private

  def send_admin_mail
    AdminMailer.with(user: self).new_user_waiting_for_approval.deliver_now
    AdminMailer.with(user: self).new_user_welcome.deliver_now
    # AdminMailer.new_user_waiting_for_approval(email).deliver_now
  end
end
