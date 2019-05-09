module BreweriesHelper

	def belongs_to_current_user
		get_current_user.user_type =="Brewery" && @brewery.user_id == get_current_user.id
	end 
end
