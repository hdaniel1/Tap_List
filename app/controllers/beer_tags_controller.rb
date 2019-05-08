class BeerTagsController < ApplicationController

	def new
		@beer_tag = BeerTag.new 
	end 

	def create 
		@beer_tag = BeerTag.find_or_create_by(beertag_params)
		redirect_to beer_path(@beer_tag.beer)
	end 

	private 

	def beertag_params 
		params.require(:beer_tag).permit(:beer_id, :tag_id)
	end 

end
