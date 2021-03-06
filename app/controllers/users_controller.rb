class UsersController < ApplicationController
	# layout "login"
	before_action :find_user, only: [:show, :edit, :update]

	def show
		@retaileruser = User.new
		
		if get_current_user.user_type == "Retailer"
			@retailer = Retailer.new
		end
		if get_current_user.user_type == "Brewery"
			@unclaimed_breweries = Brewery.where(user_id: nil)
			@brewery = Brewery.new
		end

	end

	def new
		if get_current_user
			redirect_to user_path(get_current_user)
		else
			@user = User.new
		end
	end


	def create
		@user = User.new(user_params)
		if @user.valid?
	        @user.save
	        session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			render :new
		end
	end


	def edit
		if get_current_user.id != @user.id 
			redirect_to user_path(@user)
		end
	end

	def update
		@user.update(user_params)
		if @user.valid?
			redirect_to user_path(@user)
		else
			render :new 
		end 
	end

	private

	def find_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit!
	end
end
