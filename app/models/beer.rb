class Beer < ApplicationRecord
	belongs_to :brewery
	belongs_to :retailer, optional: true
	has_many :retailer_beers
	has_many :retailers, through: :retailer_beers
	has_many :favorite_beers
	has_many :users, through: :favorite_beers
	has_many :beer_tags
	has_many :tags, through: :beer_tags
	validates :IBU, :inclusion => 5..120
	accepts_nested_attributes_for :retailer_beers
	accepts_nested_attributes_for :brewery
	accepts_nested_attributes_for :tags


	def self.beer_glass_sizes
		[4, 8, 12, 16, 24]
	end

	def self.all_beer_styles
		[["Bocks",
				["German Bock", "German Doppelbock", "German Eisbock", "German Maibock", "German Weizenbock", "Brown Ales", "American Brown Ale", "English Brown Ale", "English Dark Mild Ale", "German Altbier"]],
		["Dark Ales",
				["American Black Ale", "Belgian Dark Ale", "Belgian Dubbel", "German Roggenbier", "Scottish Ale", "Winter Warmer"]],
		["Dark Lagers",
				["American Amber / Red Lager", "European Dark Lager", "German Märzen / Oktoberfest", "German Rauchbier", "German Schwarzbier", "Munich Dunkel Lager", "Vienna Lager"]],
		["Hybrid Beers",
				["American Cream Ale", "Bière de Champagne / Bière Brut", "Braggot", "California Common / Steam Beer"]],
		["India Pale Ales",
				["American Brut IPA", "American Imperial IPA", "American IPA", "Belgian IPA", "English India Pale Ale (IPA)", "New England IPA"]],
		["Pale Ales",
				["American Amber / Red Ale", "American Blonde Ale", "American Pale Ale (APA)", "Belgian Blonde Ale", "Belgian Pale Ale", "Belgian Saison", "English Bitter", "English Extra Special / Strong Bitter (ESB)", "English Pale Ale", "English Pale Mild Ale", "French Bière de Garde", "German Kölsch", "Irish Red Ale"]],
		["Pilseners and Pale Lagers",
				["American Adjunct Lager", "American Imperial Pilsner", "American Lager", "American Light Lager", "American Malt Liquor", "Bohemian Pilsener", "European Export / Dortmunder", "European Pale Lager", "European Strong Lager", "German Helles", "German Kellerbier / Zwickelbier", "German Pilsner"]],
		["Porters",
				["American Imperial Porter", "American Porter", "Baltic Porter", "English Porter", "Robust Porter", "Smoke Porter"]],
		["Specialty Beers",
				["Chile Beer", "Finnish Sahti", "Fruit and Field Beer", "Herb and Spice Beer", "Japanese Happoshu", "Japanese Rice Lager", "Low Alcohol Beer", "Pumpkin Beer", "Russian Kvass", "Rye Beer", "Scottish Gruit / Ancient Herbed Ale", "Smoke Beer"]],
		["Stouts",
				["American Imperial Stout", "American Stout", "English Oatmeal Stout", "English Stout", "English Sweet / Milk Stout", "Foreign / Export Stout", "Irish Dry Stout", "Russian Imperial Stout"]],
		["Strong Ales",
				["American Barleywine", "American Imperial Red Ale", "American Strong Ale", "American Wheatwine Ale", "Belgian Quadrupel (Quad)", "Belgian Strong Dark Ale", "Belgian Strong Pale Ale", "Belgian Tripel", "British Barleywine", "English Old Ale", "English Strong Ale", "Scotch Ale / Wee Heavy"]],
		["Wheat Beers",
				["American Dark Wheat Ale", "American Pale Wheat Ale", "Belgian Witbier", "Berliner Weisse", "German Dunkelweizen", "German Hefeweizen", "German Kristalweizen"]],
		["Wild/Sour Beers",
				["American Brett", "American Wild Ale", "Belgian Faro", "Belgian Fruit Lambic", "Belgian Gueuze", "Belgian Lambic", "Flanders Oud Bruin", "Flanders Red Ale", "Leipzig Gose"]]]
			end

end
