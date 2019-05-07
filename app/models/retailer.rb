class Retailer < ApplicationRecord
	has_many :retailer_beers
	has_many :beers, through: :retailer_beers
	belongs_to :user
	has_many :beers
end
