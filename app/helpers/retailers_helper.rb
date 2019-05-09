module RetailersHelper

	def user_owns_retailer
		get_current_user.user_type == "Retailer" && @retailer.user_id == get_current_user.id
	end


end
