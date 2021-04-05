class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about_us, :speaker ]
  # before_action :set_user, only: [:profile, :show, :edit, :update, :destroy]

  def home
  end
  def profile
    # @user = User.find(params[:id])
    # @user = User.find(params[:id])
        # user = Users.find(params[:id])
        user = current_user
  end

  private

  #   def set_user
  #   @user = User.find(params[:id])
  # end
  def user_params
  params.require(:user).permit(:avatar, :id, :email, :password, :company, :activity, :category, :website, :gender, :first_name, :last_name, :phone, :whatsapp, :release, :status, :member, :job, :category)
  end
end

