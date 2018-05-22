class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def destroy_user_session_path_for(resource)
    admin_root_path
  end

  protected

  def configure_permitted_parameters
    added_attrs = [ :username, :email, :password, :password_confirmation, :company, :position, :avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
