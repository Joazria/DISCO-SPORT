class AdminMailer < ApplicationMailer
  # default from: 'contact@discosport.tv'
  # layout 'mailer'

  def new_user_waiting_for_approval
    @user = params[:user]
    # @email = email
    mail(
      to: 'contact@discosport.tv',
      subject: "#{@user.first_name} #{@user.last_name} signed up!"
      # subject: "signed up!"
    )
  end

  def new_user_welcome
    @user = params[:user] # Instance variable => available in view
    mail(
      to: @user.email,
      subject: "Welcome to DiscoSport!"
    )
    # This will render a view in `app/views/user_mailer`!
  end

  def status_email(user)
    @user = user # Instance variable => available in view
    mail(
      to: @user.email,
      subject: "#{@user.status == 'Approved' ? 'You just got Approved!' : 'Status: Pending'}"
    )
  end
end
