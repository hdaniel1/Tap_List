class RetailersController < ApplicationController
	before_action :authorized
	before_action :find_retailer, only: [:show, :edit, :update]
	def index
		@retailers = Retailer.all
	end

	def show
		@breweries = Brewery.all
		@beer = Beer.new
	end

	def new
		@retailer = Retailer.new
	end

	def create 
		@retailer = Retailer.create(retailer_params)
		if @retailer.valid?
			redirect_to retailer_path(@retailer)
		else
			render :new 
		end 
	end

	def edit

	end

	def update
		@retailer.update(retailer_params)
		if @retailer.valid?
			redirect_to retailer_path(@retailer)
		else
			render :edit 
		end 
	end

	private

	def find_retailer
		@retailer = Retailer.find(params[:id])
	end

	def retailer_params
		params.require(:retailer).permit!
	end
end
