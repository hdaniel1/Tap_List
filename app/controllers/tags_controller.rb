class TagsController < ApplicationController
	before_action :authorized
	def new
		@tag = Tag.new 
	end 

	def create 
		@tag = Tag.find_or_create_by(description: params[:tag][:description])
		@beer_tag = BeerTag.create(beer_id: params[:beer_id], tag_id: @tag.id)
		redirect_to beer_path(@beer_tag.beer)
	end 

	private 

	def tag_params 
		params.require(:tag).permit(:description, :beer_id)
	end 

end
