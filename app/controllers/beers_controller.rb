class BeersController < ApplicationController

	before_action :find_beer, only: [:show, :edit, :update]

	def index
		@beers = Beer.all
	end

	def show
		@retailerbeer = RetailerBeer.new
		@beer_tag = BeerTag.new
		@tag = Tag.new
	end

	def new
		@beer = Beer.new
	end


	def create
		if params["beer"]["retailer_id"] == nil && params["beer"]["brewery_attributes"] == nil
			@beer = Beer.create(beer_params_without_retailer)
		elsif params["beer"]["brewery_attributes"]["name"] == ""
			@beer = Beer.create(beer_params_with_existing_brewery)
			create_retailerbeer
		else
			@beer = Beer.create(beer_params_with_new_brewery)
			create_retailerbeer
		end
			redirect_to beer_path(@beer)
	end

	def edit
	end

	def update
		@beer.update(beer_params)
		redirect_to beer_path(@beer)
	end

	private

	def create_retailerbeer
		RetailerBeer.create(beer_id: @beer.id,
								retailer_id: params["beer"]["retailer_id"],
								glass_size: params["beer"]["glass_size"],
								retailer_price: params["beer"]["price"]  )
	end
	def find_beer
		@beer = Beer.find(params[:id])
	end

	def beer_params_with_existing_brewery
		params.require(:beer).permit(:name, :style, :ABV, :IBU, :description, :available, :price, :availability, :on_site_purchase, :glass_size, :image, :brewery_id, :retailer_id)
	end

	def beer_params_with_new_brewery
		params.require(:beer).permit(:name, :style, :ABV, :IBU, :description, :available, :price, :availability, :on_site_purchase, :glass_size, :image, :retailer_id, brewery_attributes: [:name, :city, :state, :description, :established, :website])
	end

	def beer_params_without_retailer
		params.require(:beer).permit(:name, :style, :ABV, :IBU, :description, :available, :price, :availability, :on_site_purchase, :glass_size, :image, :brewery_id)
	end


end
