class UserMailer < ApplicationMailer

    #def new_registration(user)
        #@user = user
    def new_registration
        @user = params[:user]
        @url = "http://localhost:3000/log_in"
        mail(to: @user.email, subject: "Welcome #{@user.name}")
    end
end
