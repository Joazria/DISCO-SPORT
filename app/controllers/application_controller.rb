class ApplicationController < ActionController::Base
  before_action :authenticate_user!

    before_action :configure_permitted_parameters, if: :devise_controller?

 protected


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :category, :email, :password, :company, :country, :activity, :website, :gender, :first_name, :last_name, :phone, :whatsapp, :release, :linkedin, :status, :member, :job])

    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :category, :email, :password, :company, :country, :activity, :website, :gender, :first_name, :last_name, :phone, :whatsapp, :release, :linkedin, :status, :member, :job])


  end

  def after_sign_in_path_for(resource)
  stored_location_for(resource) || profile_path
end


end
