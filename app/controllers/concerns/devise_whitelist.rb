module DeviseWhitelist
  extend ActiveSupport::Concern
  
  included do
      before_action :configure_permitted_parameters, if: :devise_controller?
        ##before_filter no funciona...
  end

  def configure_permitted_parameters ##metodo para que acepte mas parametros en este caso name
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end