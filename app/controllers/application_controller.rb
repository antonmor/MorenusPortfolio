class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

 ## before_action :configure_permitted_parameters, if: :devise_controller?
  ##def configure_permitted_parameters ##metodo para que acepte mas parametros en este caso name
 ##   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
 ##   devise_parameter_sanitizer.permit(:account_update, keys: [:name])
 ## end
  include DeviseWhitelist
  
end
