class BreweriesController < ApplicationController

	layout "brewery"
	
	before_action :find_brewery, only: [:show, :edit, :update]
	def index
		@breweries = Brewery.all 
	end 

	def show 
		
	end 

	def edit

	end 

	def update
		
	end

	private

	def find_brewery
		@brewery = Brewery.find(params[:id])
	end 

	def brewery_params
		params.require(:brewery).permit!
	end 


end
