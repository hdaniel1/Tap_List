class Tag < ApplicationRecord
	has_many :beer_tags
	has_many :beers, through: :beer_tags
	validates :description, presence: true
end
