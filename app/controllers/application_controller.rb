class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :email, :password, :company, :country, :activity, :website, :gender, :first_name, :last_name, :phone, :whatsapp, :release, :linkedin, :status, :member, :job])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :email, :password, :company, :country, :activity, :website, :gender, :first_name, :last_name, :phone, :whatsapp, :release, :linkedin, :status, :member, :job])
  end

  # def after_update_path_for(resource)
  #   # user_path(resource)
  #   stored_location_for(resource) || profile_path(current_user)
  # end

  private

  def after_sign_in_path_for(resource)
    if current_user.email == 'dwftung@gmail.com' || current_user.email == 'joa@birds.art.br' || current_user.email == 'patrickzuchowicki@basiclead.com'
      stored_location_for(resource) || dashboard_path
    else
      stored_location_for(resource) || profile_path(current_user)
    end
  end


end
