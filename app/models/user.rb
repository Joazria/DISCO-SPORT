class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  after_create :send_admin_mail

  private

  def send_admin_mail
    AdminMailer.with(user: self).new_user_waiting_for_approval.deliver_now
    # AdminMailer.new_user_waiting_for_approval(email).deliver_now
  end
end
