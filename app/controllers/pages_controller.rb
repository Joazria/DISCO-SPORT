class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :speaker]
  # before_action :set_user, only: [:profile, :show, :edit, :update, :destroy]

  def dashboard
    if params[:search].blank?
      # redirect_to dashboard_path, alert: 'Empty field!'
    else
      @parameter = params[:search].downcase
      # @results = User.all.where("lower(first_name) LIKE :search OR lower(last_name) LIKE :search", search: "%#{@parameter}%")
      @results = User.all.where("lower(full_name) LIKE :search", search: "%#{@parameter}%")
    end
    @users = User.all
    @users_pending = User.where(status: 'pending').sort_by { |event| [event.created_at] }
    @users_approved = User.where(status: 'approved').sort_by { |event| [event.created_at] }
    @users_not_approved = User.where(status: 'not approved').sort_by { |event| [event.created_at] }
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br' || current_user.email == 'patrickzuchowicki@basiclead.com'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
  end

  private

  def user_params
    params.require(:user).permit(:avatar, :activity, :id, :email, :password, :company, :country, :website, :gender, :first_name, :last_name, :phone, :whatsapp, :release, :status, :member, :job)
  end
end
