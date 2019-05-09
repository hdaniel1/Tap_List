module BeersHelper

	def user_owns_brewery
		@beer.brewery.user_id == get_current_user.id
	end

	def retailer_doesnt_offer_beer
		get_current_user.user_type == "Retailer" && !get_current_user.retailer.beers.include?(@beer)
	end
end
