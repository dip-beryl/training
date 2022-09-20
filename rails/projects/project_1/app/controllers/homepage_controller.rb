class HomepageController < ApplicationController
    
    def index
        if admin_signed_in?
            redirect_to products_path
        end

        if session[:user_id]
            redirect_to products_path
        end

    end
end