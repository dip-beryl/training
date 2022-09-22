class UsersController < ApplicationController
	before_action :check_session?, only: %i[ index register ]
	before_action :category, only: %i[ register create ]
	#before_action :set_user, only: %i[ show ]

	def index
		if @session

		else
			redirect_to log_in_path, alert: "Please Log in"
		end
	end

	def register
		if @session
			redirect_to :index, alert: "You are already Signed In"
		end
		
		
		@user = User.new
	end

	def create
		
		@user = User.new(user_params)

		if @user.save
			
			# UserMailer.new_registration(@user).deliver_later
			UserMailer.with(user: @user).new_registration.deliver_later

			redirect_to log_in_path, status: :created #201

		else
			render :register, status: :unprocessable_entity #422
		end
	end

	private
		def check_session?
			if session[:user_id]
				@user = User.find_by(id: session[:user_id])
				@session = true
				return true
			else
				@session = false
				return false
			end
		end

	def session_user
		@user = User.find_by(id: session[:id])
	end

	def category
		@categories = [:Electronics, :Cloths, :Toys, :Furniture, :"Smart Phones", :Cosmetics, :Kitchen, :Appliance]
	end

	# def set_user
	#   @set_user = User.find(params[:id])
	# end

	def user_params
		params.require(:user).permit(:name,  :contact, {category: []}, :email, :password, :password_confirmation)
	end

end


