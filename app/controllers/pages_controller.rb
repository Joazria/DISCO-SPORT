class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :newsletters, :bootcamp]
  # before_action :set_user, only: [:profile, :show, :edit, :update, :destroy]

  def dashboard
    if params[:search].blank?
      # redirect_to dashboard_path, alert: 'Empty field!'
    else
      @results = User.where("last_name ILIKE :search OR first_name ILIKE :search OR company ILIKE :search OR activity ILIKE :search OR status ILIKE :search OR member ILIKE :search OR email ILIKE :search", search: "%#{params[:search]}%")
    end
    @users = User.all
    @users_pending = User.where(status: 'pending').sort_by { |event| [event.created_at] }
    @users_approved = User.where(status: 'approved').sort_by { |event| [event.created_at] }.reverse
    @users_not_approved = User.where(status: 'not approved').sort_by { |event| [event.created_at] }
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br' || current_user.email == 'joa.azria@gmail.com'|| current_user.email == 'patrickzuchowicki@basiclead.com'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
  end

  def delegates
    @users_approved = User.where(status: 'approved').excluding(current_user).sort_by { |event| [event.created_at] }.reverse
  end

  def home
    @newsletters = Newsletter.all
    @users_staff = User.where(member: 'STAFF')


    @users_approved = User.where(status: 'approved').excluding(current_user).sort_by { |event| [event.created_at] }.reverse
  end

  # private

  # def user_params
  #   params.require(:user).permit(:avatar, :activity, :id, :email, :password, :company, :country, :website, :gender, :first_name, :last_name, :phone, :whatsapp, :release, :status, :member, :job)
  # end
end
