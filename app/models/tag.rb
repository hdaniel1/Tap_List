class Tag < ApplicationRecord
	has_many :beer_tags
	has_many :beers, through: :beer_tags
	validates :description, presence: true

	def self.get_descriptions
		Tag.all.map do |tag|
			tag.description 
		end 
	end 
	
end
