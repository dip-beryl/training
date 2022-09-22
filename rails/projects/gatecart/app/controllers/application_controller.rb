class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_in, keys: [:remember_me])

        devise_parameter_sanitizer.permit(:sign_up) do |user_params|
            user_params.permit(:first_name, :last_name, :contact, :email, :password, :password_confirmation)
        end

        devise_parameter_sanitizer.permit(:account_update) { |user_params| 
            u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
        }
    end
end
