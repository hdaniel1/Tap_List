class RetailerBeer < ApplicationRecord
	belongs_to :retailer
	belongs_to :beer
	validates :retailer_price, presence: true
	validates :number_of_barrels, presence: true

end
