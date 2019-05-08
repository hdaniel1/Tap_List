class FavoriteBeersController < ApplicationController

	def new
		@favorite_beer = FavoriteBeer.new
	end 

	def create 
		@favorite_beer = FavoriteBeer.find_or_create_by(fave_beer_params)
		redirect_to beer_path(@favorite_beer.beer)
	end 

	private 

	def fave_beer_params
		params.require(:favorite_beer).permit(:beer_id, :user_id)
	end 
end