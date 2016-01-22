class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :description, :email, :URL_Video, :URL_WebPage, :addres, :logo, :password, :type_id, :city_id) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :description, :email, :URL_Video, :URL_WebPage, :addres, :logo, :password) }
        end

end
