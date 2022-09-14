class UsersController < ApplicationController

  before_action :set_user, only: %i[ show ]

  def sign_in
  end

  def sign_up
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_sign_in, status: :created #201
    
    else
      render users_sign_up_path, status: :unprocessable_entity #422
    end
  end

  def show
    @user = @set_user
  end

  private
    def set_user
      @set_user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name,  :contact, :email, :password)
    end

end


