class RetailerBeersController < ApplicationController

	def new

	end

	def create
		@retailerbeer = RetailerBeer.create(retailerbeer_params)
		redirect_to retailer_path(@retailerbeer.retailer)
	end

	private

	def retailerbeer_params
		params.require(:retailer_beer).permit!
	end
end
