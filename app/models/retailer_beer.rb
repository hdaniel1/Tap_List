class RetailerBeer < ApplicationRecord
	belongs_to :retailer 
	belongs_to :beer
end
