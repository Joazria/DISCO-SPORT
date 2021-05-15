class NewslettersController < ApplicationController
     before_action :set_newsletter, only: [:show, :edit, :update, :destroy]

  def index
      @newsletters = Newsletter.all
  end

  def show
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def edit
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    @newsletter.user = current_user
    if @newsletter.save
      redirect_to profile_path(current_user), notice: "Your Newsletter was successfully created."
    else
      render :new
    end
  end

  def updaterails
    if @newsletter.update(newsletter_params)
      redirect_to @newsletter, notice: "Your Newsletter was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @newsletter.destroy
    redirect_to root_path, notice: "Your Newsletter was successfully destroyed."
  end

  private

  def set_identity
    @newsletter = Newsletter.find(params[:id])
  end

  def newsletter_params
  params.require(:newsletter).permit(:company,
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
