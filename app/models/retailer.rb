class Retailer < ApplicationRecord
	has_many :retailer_beers
	has_many :beers, through: :retailer_beers
	belongs_to :user
	has_many :beers

	def get_retailer_beers
		RetailerBeer.where(retailer_id: self)
	end

	def get_available_beers
		self.retailer_beers.select do |retailer_beer|
			retailer_beer.beer.available == true 
		end 
	end
end
