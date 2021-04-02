class AdminMailer < ApplicationMailer
  # default from: 'from@example.com'
  # layout 'mailer'

  def new_user_waiting_for_approval
    @user = params[:user]
    # @email = email
    mail(
      to: 'admin@email.com',
      subject: "#{@user.first_name} #{@user.last_name} signed up!"
      # subject: "signed up!"
    )
  end

  # def new_user_waiting_for_approval
  #   @user = params[:user] # Instance variable => available in view
  #   mail(
  #     to: @user.email,
  #     subject: "#{@user.first_name} #{@user.last_name} signed up!"
  #   )
  #   # This will render a view in `app/views/user_mailer`!
  # end
end
