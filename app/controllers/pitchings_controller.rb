class PitchingsController < ApplicationController
   before_action :set_pitching, only: [:show, :edit, :update, :destroy]

  def index
      @pitchings = Pitching.all
  end

  def show
    @pitchings = Pitching.all
  end

  def new
    @pitching = Pitching.new
  end

  def edit
  end

  def create
    @pitching = Pitching.new(pitching_params)
    @pitching.user = current_user
    if @pitching.save
      redirect_to @pitching, notice: "Your pitching was successfully created."
    else
      render :new
    end
  end

  def update
    if @band.update(pitching_params)
      redirect_to @pitching, notice: "Your pitching was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @pitching.destroy
    redirect_to root_path, notice: "Your pitching was successfully destroyed."
  end

  private

  def set_pitching
    @pitching = Pitching.find(params[:id])
  end

  def pitching_params
  params.require(:pitching).permit(:name, :description, :video)
  end
end
