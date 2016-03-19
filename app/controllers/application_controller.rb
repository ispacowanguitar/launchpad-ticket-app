class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:role_id, :email, :password, :password_confirmation)
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    "/"
  end

  def after_sign_in_path_for(resource)
    '/'
  end

end
