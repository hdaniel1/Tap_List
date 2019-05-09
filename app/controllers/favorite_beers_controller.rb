class FavoriteBeersController < ApplicationController
	before_action :find_fave_beer
	before_action :authorized
	def show

	end 

	def new
		@favorite_beer = FavoriteBeer.new
	end 

	def create 
		@favorite_beer = FavoriteBeer.find_or_create_by(fave_beer_params)
		redirect_to beer_path(@favorite_beer.beer)
	end 

	def destroy

	end 

	private 

	def find_fave_beer
		@favorite_beer = FavoriteBeer.find_by(params[:id])
	end
	
	def fave_beer_params
		params.require(:favorite_beer).permit(:id, :beer_id, :user_id, :review)
	end 
end