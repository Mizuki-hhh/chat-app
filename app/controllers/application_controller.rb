class ApplicationController < ActionController::Base
  bofore_action :authenticate_user!
  bofore_action :configure_permitted_parameters, if: devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [name])
  end
end
