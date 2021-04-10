class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'falecom@trikalias.com.br'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
  end

  def update
    @user = User.find(params[:id])
    unless current_user.email == 'dwftung@gmail.com' || current_user.email == 'falecom@trikalias.com.br'
      redirect_to root_path, notice: 'Unauthorized Area'
    end
    if @user.update(user_params)
      redirect_to profile_path(@user), notice: 'User Updated!'
    else
      render :edit
    end
  end

  private

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
