module FavoriteBeersHelper
	
	def my_favorite_beer
		FavoriteBeer.find_by(user_id: get_current_user.id, beer_id: @beer.id)
	end 
end 