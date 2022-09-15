class UsersController < ApplicationController

  #before_action :set_user, only: %i[ show ]

  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])  
    
    else
      redirect_to sign_in_path, notice: "Please Sign In"
    end
  end

  def sign_up
    if session[:user_id]
      redirect_to root_path, alert: "You are already Signed In"
    end
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to sign_in_path, status: :created #201
    
    else
      render :sign_up, status: :unprocessable_entity #422
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    # def set_user
    #   @set_user = User.find(params[:id])
    # end

    def user_params
      params.require(:user).permit(:name,  :contact, :email, :password, :password_confirmation)
    end

end


