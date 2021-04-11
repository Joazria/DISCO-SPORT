class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :speaker]
  # before_action :set_user, only: [:profile, :show, :edit, :update, :destroy]

  def home
  end

  def profile
    # @user = User.find(params[:id])
    # @user = User.find(params[:id])
    # user = Users.find(params[:id])
    user = current_user
  end

  def dashboard
    @users_pending = User.where(status: 'Pending').sort_by { |event| [event.created_at] }
    @users_approved = User.where(status: 'Approved').sort_by { |event| [event.created_at] }
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
  end

  private

  def user_params
    params.require(:user).permit(:avatar, :activity, :id, :email, :password, :company, :country, :website, :gender, :first_name, :last_name, :phone, :whatsapp, :release, :status, :member, :job)
  end
end
