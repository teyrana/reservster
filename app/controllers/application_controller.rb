class ApplicationController < ActionController::Base
  # prevent CSRF attacks ...
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit( :sign_up, keys: [:name, :email, :role_id])
        devise_parameter_sanitizer.permit( :account_update, keys: [:name, :email, :role_id])
    end

end
