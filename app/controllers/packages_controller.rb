class PackagesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:id])
  end
end
