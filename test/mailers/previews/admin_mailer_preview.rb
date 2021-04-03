# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
  def new_user_waiting_for_approval
    user = User.first
    AdminMailer.with(user: user).new_user_waiting_for_approval
    # @user = params[:user] # Instance variable => available in view
    # mail(to: @user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end

end
