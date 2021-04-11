class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
  end

  def update
    @user = User.find(params[:id])
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
    if @user.update(user_params)
      send_status_mail
      redirect_to dashboard_path, notice: 'User Updated!'
    else
      render :edit
    end
  end

  # after_create :send_admin_mail

  # private

  # def send_admin_mail
  #   AdminMailer.with(user: self).new_user_waiting_for_approval.deliver_now
  #   AdminMailer.with(user: self).new_user_welcome.deliver_now
  # end

  private

  def send_status_mail
    AdminMailer.with(user: self).status_email(@user).deliver_now
  end

  def user_params
    params.require(:user).permit(:avatar,
                                 :activity,
                                 :id,
                                 :email,
                                 :password,
                                 :company,
                                 :country,
                                 :website,
                                 :gender,
                                 :first_name,
                                 :last_name,
                                 :phone,
                                 :whatsapp,
                                 :release,
                                 :status,
                                 :member,
                                 :job)
  end
end
