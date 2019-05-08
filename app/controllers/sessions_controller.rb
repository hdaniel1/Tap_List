class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
	        session[:user_id] = @user.id
	        redirect_to user_path(@user)
	    else
	        flash["notice"] = "No account found with that username and password combination"
	        render :new
	    end
	end

	def destroy
	    session.clear
	    redirect_to login_path
  	end
end
