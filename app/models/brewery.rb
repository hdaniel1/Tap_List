class Brewery < ApplicationRecord
	has_many :beers
	belongs_to :user

	def get_available_beers
		self.beers.where(available:true)
	end 

end
