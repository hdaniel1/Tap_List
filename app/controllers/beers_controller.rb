class BeersController < ApplicationController

	before_action :find_beer, only: [:show, :edit, :update]
	def index
		@beers = Beer.all 
	end 


	def show 
		
	end 

	def new
		@beer = Beer.new 
	end 
	

	def create 
		@beer = Beer.create(beer_params)
		redirect_to beer_path(@beer)
	end 

	def edit

	end 

	def update
		@beer = Beer.update(beer_params)
		redirect_to beer_path(@beer)
	end

	private

	def find_beer
		@beer = Beer.find(params[:id])
	end 

	def beer_params
		params.require(:beer).permit!
	end 

end
