class IdentitiesController < ApplicationController
     before_action :set_identity, only: [:show, :edit, :update, :destroy]

  def index
      @identities = Identity.all
  end

  def show
    @identities = Identity.all
  end

  def new
    @identity = Identity.new
  end

  def edit
  end

  def create
    @identity = Identity.new(identity_params)
    @identity.user = current_user
    if @identity.save
      redirect_to profile_path(current_user), notice: "Your Discosport Identity was successfully created."
    else
      render :new
    end
  end

  def update
    if @identity.update(identity_params)
      redirect_to @identity, notice: "Your Discosport Identity was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @identity.destroy
    redirect_to root_path, notice: "Your Discosport Identity was successfully destroyed."
  end

  private

  def set_identity
    @identity = Identity.find(params[:id])
  end

  def identity_params
  params.require(:identity).permit(:company,
      :country,
      :activity,
      :website,
      :gender,
      :phone,
      :whatsapp,
      :linkedin,
      :release,
      :member,
      :job)
  end
end
