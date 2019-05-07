class Brewery < ApplicationRecord
	has_many :beers
	belongs_to :user

end
