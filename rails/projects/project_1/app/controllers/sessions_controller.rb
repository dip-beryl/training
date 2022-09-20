class SessionsController < ApplicationController
    
    def log_in
        if session[:user_id]
            redirect_to root_path, notice: "Welcome Back"
        end
    end
   

    def create
        @user = User.find_by_email_and_password(params[:email].downcase, params[:password])

        if @user.present?
            session[:user_id] = @user.id
            redirect_to products_path, notice: "Logged in Successfully"
        else
            if (params[:email].empty? || params[:password].empty?)
                render :log_in
            else
                redirect_to :log_in, alert: "Invalid Email or Password"
            end
        end

    end

    def destroy
        session[:user_id] = nil
        redirect_to log_in_path, status: :see_other, notice: "Successfully Signed Out"
    end


end
