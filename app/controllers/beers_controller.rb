class BeersController < ApplicationController

	before_action :find_beer, only: [:show, :edit, :update]
	def index
		@beer = Beer.all 
	end 

	def show 
		
	end 

	def edit

	end 

	def update
		
	end

	private

	def find_beer
		@beer = Beer.find(params[:id])
	end 

	def beer_params
		params.require(:brewery).permit!
	end 

end
