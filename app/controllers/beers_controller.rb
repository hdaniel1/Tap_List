class BeersController < ApplicationController

	before_action :find_beer, only: [:show, :edit, :update]

	def index
		@beers = Beer.all
	end

	def show
		@retailerbeer = RetailerBeer.new
	end

	def new
		@beer = Beer.new
	end


	def create
		if params["beer"]["brewery_attributes"]["name"] == ""
			beerparam = beer_params_with_existing_brewery
		else
			beerparam = beer_params_with_new_brewery
		end
			@beer = Beer.create(beerparam)
			redirect_to beer_path(@beer)
	end

	def edit
	end

	def update
		@beer.update(beer_params)
		redirect_to beer_path(@beer)
	end

	private

	def find_beer
		@beer = Beer.find(params[:id])
	end

	def beer_params_with_existing_brewery
		params.require(:beer).permit(:name, :style, :ABV, :IBU, :description, :available, :price, :availability, :on_site_purchase, :glass_size, :image, :brewery_id, :retailer_id)
	end

	def beer_params_with_new_brewery
		params.require(:beer).permit(:name, :style, :ABV, :IBU, :description, :available, :price, :availability, :on_site_purchase, :glass_size, :image, :retailer_id, brewery_attributes: [:name, :city, :state, :description, :established, :website])
	end

end
