class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @users_approved = User.where(status: 'approved').sort_by { |event| [event.created_at] }

  end

  def edit
    @user = User.find(params[:id])
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br' || current_user.email == 'patrickzuchowicki@basiclead.com'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
  end

  def update
    @user = User.find(params[:id])
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br' || current_user.email == 'patrickzuchowicki@basiclead.com'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
    if @user.update(user_params)
       # current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br' || current_user.email == 'patrickzuchowicki@basiclead.com'
        redirect_to dashboard_path, notice: 'User Updated'
        if @user.status == "approved"
          send_status_mail
        else
          status_not_approved_email
        end
      # else
      # redirect_to profile_path(current_user), notice: 'User Updated!'
      # redirect_to dashboard_path, notice: 'User Updated!'
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

  def status_not_approved_email
    AdminMailer.with(user: self).status_not_approved_email(@user).deliver_now
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
