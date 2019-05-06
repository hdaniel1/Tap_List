class Beer < ApplicationRecord
	belongs_to :brewery
	has_many :retailerbeers
	has_many :retailers, through: :retailerbeers
end
