class Retailer < ApplicationRecord
	has_many :retailer_beers
	has_many :beers, through: :beers
	belongs_to :user
end
