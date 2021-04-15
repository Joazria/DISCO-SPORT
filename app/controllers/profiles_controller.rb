class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @users_approved = User.where(status: 'approved').sort_by { |event| [event.created_at] }
    @packages = Package.all
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
      redirect_to dashboard_path, notice: 'User Updated'
    else
      render :edit
    end
    @user.status == "approved" ? send_status_mail : status_not_approved_email
  end

  def search
    if params[:search].blank?
      redirect_to dashboard_path, alert: 'Empty field!'
    else
      @parameter = params[:search].downcase
      @results = User.all.where("lower(first_name) LIKE :search", search: "%#{@parameter}%")
    end
  end

  private

  def send_status_mail
    AdminMailer.with(user: self).status_email(@user).deliver_now
  end

  def status_not_approved_email
    AdminMailer.with(user: self).status_not_approved_email(@user).deliver_now
  end

  def user_params
    params.require(:user).permit(:status)
  end
end
