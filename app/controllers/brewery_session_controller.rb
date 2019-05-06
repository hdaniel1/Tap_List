class BrewerySessionController < ApplicationController

	def new
	
	end 

	def create
		@brewery = Brewery.find_by(name: params[:name])

		if @brewery
	        session[:brewery_id] = @brewery.id
	        redirect_to snacks_path
	    else 
	        flash["notice"] = "No brewery found with that name"
	        render :new
	    end
	end 

	def destroy
	    session.clear
	    redirect_to login_path
  	end
end 