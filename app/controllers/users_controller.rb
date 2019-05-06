class UsersController < ApplicationController

	before_action :find_user, only: [:show, :edit, :update]

	def index
		@users = user.all 
	end 

	def show 
		@retaileruser = User.new
	end

	def new
		@user = user.new 
	end 
	

	def create 
		@user = user.create(user_params)

		redirect_to user_path(@user)
	end 

	def edit

	end 

	def update
		@user.update(user_params)
		redirect_to user_path(@user)
	end

	private

	def find_user
		@user = user.find(params[:id])
	end 

	def user_params
		params.require(:user).permit!
	end 
end
