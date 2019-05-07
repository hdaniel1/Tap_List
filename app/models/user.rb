class User < ApplicationRecord
	has_many :favorite_beers
	has_many :beers, through: :favorite_beers
	has_one :brewery
	has_one :retailer
	validates :username, presence: true, uniqueness: [case_sensitive: false]
	accepts_nested_attributes_for :brewery
end
