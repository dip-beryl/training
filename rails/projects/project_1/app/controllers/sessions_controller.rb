class SessionsController < ApplicationController
    
    def sign_in
        if session[:user_id]
            redirect_to root_path, notice: "Welcome Back"
        end
    end

    

    def create
        @user = User.find_by_email_and_password(params[:email], params[:password])

        if @user.present?
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Logged in Successfully"
        else
            #redirect_to :sign_in, alert: "Invalid Email or Password"
            flash[:alert] = "Invalid Email or Password"
        end

    end

    def destroy
        session[:user_id] = nil
        redirect_to :sign_in, notice: "Successfully Signed Out"
    end


end
