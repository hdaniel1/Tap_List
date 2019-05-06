class Retailer < ApplicationRecord
	has_many :retailerbeers
	has_many :beers, through: :beers
end
