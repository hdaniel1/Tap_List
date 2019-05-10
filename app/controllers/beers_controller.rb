class BeersController < ApplicationController
	before_action :authorized
	before_action :find_beer, only: [:show, :edit, :update]

	def index

		if params[:beer_tag_description]
			@tag_desc = params[:beer_tag_description]
			@tags = Tag.all.select {|tag| tag.description == params[:beer_tag_description]}
			@beers = []
			@tags.each do |tag|
				tag.beers.each do |beer|
					@beers << beer
				end
			end
			@beers
		else
			@beers = Beer.all
		end
	end

	def show
		@retailerbeer = RetailerBeer.new
		@beer_tag = BeerTag.new
		@tag = Tag.new
		@favorite_beer = FavoriteBeer.new
	end

	def new
		@beer = Beer.new
	end


	def create

		if params["beer"]["retailer_id"] == nil && params["beer"]["brewery_attributes"] == nil
			@beer = Beer.new(beer_params_without_retailer)
			if @beer.valid?
				@beer.save
				redirect_to beer_path(@beer)
			else
				@brewery = Brewery.find(params["beer"]["brewery_id"])
				render "breweries/show"
			end

		elsif params["beer"]["brewery_attributes"]["name"] == ""
			@beer = Beer.new(beer_params_with_existing_brewery)
			if @beer.valid?
				@beer.save
				@retailer = Retailer.find(params[:beer][:retailer_id])
				redirect_to retailer_path(@retailer)
			else
				 @retailer = Retailer.find(params[:beer][:retailer_id])
 				 render "retailers/show"
			end

		else
			@beer = Beer.create(beer_params_with_new_brewery)

			if @beer.valid?
				@retailer = Retailer.find(params[:beer][:retailer_id])
				redirect_to retailer_path(@retailer)
			else
				render :new
			end
		end
	end

	def edit
	end

	def update
		@beer.update(beer_params_without_retailer)
		if @beer.valid?
			redirect_to beer_path(@beer)
		else
			render :edit
		end
	end

	# def new_retailerbeer
	# 	RetailerBeer.new(beer_id: @beer.id,
	# 							retailer_id: params["beer"]["retailer_id"],
	# 							glass_size: params["beer"]["glass_size"],
	# 							retailer_price: params["beer"]["price"]  )
	# end

	private

	def find_beer
		@beer = Beer.find(params[:id])
	end

	def beer_params_with_existing_brewery
		params.require(:beer).permit(:name, 
									 :style, 
									 :ABV, 
									 :IBU, 
									 :description, 
									 :brewery_id, 
									 :retailer_id, 
									 retailer_beers_attributes:
									 	[:number_of_barrels, 
									 	 :glass_size, 
									 	 :retailer_price, 
									 	 :retailer_id, 
									 	 :available])
	end

	def beer_params_with_new_brewery
		params.require(:beer).permit(:name, :style, :ABV, :IBU, :description, :retailer_id, brewery_attributes: [:name, :city, :state, :description, :established, :website], retailer_beers_attributes:[:number_of_barrels, :glass_size, :retailer_price, :retailer_id, :available])
	end

	def beer_params_without_retailer
		params.require(:beer).permit(:name, :style, :ABV, :IBU, :description, :available, :price, :glass_size, :on_site_purchase, :brewery_id, :image)
	end

end
