class BreweriesController < ApplicationController

	# layout "brewery"
	
	before_action :find_brewery, only: [:show, :edit, :update]
	def index
		@breweries = Brewery.all 
	end 

	def show 
		@beer = Beer.new
	end 

	def edit

	end 

	def update
		@brewery.update(brewery_params)
		redirect_to brewery_path(@brewery)
	end

	private

	def find_brewery
		@brewery = Brewery.find(params[:id])
	end 

	def brewery_params
		params.require(:brewery).permit!
	end 


end
