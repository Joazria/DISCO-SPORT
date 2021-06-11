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
      redirect_to root_path, notice: "Your Newsletter was successfully created."
    else
      render :new
    end
  end

  def update
    if @newsletter.update(newsletter_params)
      redirect_to root_path, notice: "Your Newsletter was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @newsletter.destroy
    redirect_to root_path, notice: "Your Newsletter was successfully destroyed."
  end

  private

  def set_newsletter
    @newsletter = Newsletter.find(params[:id])
  end

  def newsletter_params
  params.require(:newsletter).permit(:title,
      :punshline,
      :article,
      :website,
      :publish,
      :url,
      :en_fr,
      :photo)
  end
end
