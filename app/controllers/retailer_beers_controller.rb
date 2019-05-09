class RetailerBeersController < ApplicationController

	def new
		@retailerbeer = RetailerBeer.new
	end

	def create
		@retailerbeer = RetailerBeer.create(retailerbeer_params)
		redirect_to retailer_path(@retailerbeer.retailer.id)
	end

	def edit
		@retailerbeer = RetailerBeer.find(params[:id])
	end

	def update
		@retailerbeer = RetailerBeer.find(params[:id])
		@retailerbeer.update(retailerbeer_params)
		if @retailerbeer.valid?
			redirect_to retailer_path(@retailerbeer.retailer)
		else
			render :edit
		end
	end



	private

	def retailerbeer_params
		params.require(:retailer_beer).permit!
	end
end
