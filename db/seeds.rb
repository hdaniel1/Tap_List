# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'brewery_db'

brewery_db = BreweryDB::Client.new do |config|
  config.api_key = '18e47a219accd2d3855fbcd74093dd68'
end

brewery_db.breweries.all.each do |brewery| 
	Brewery.find_or_create_by(name: brewery.name, 
							  established: brewery.established.to_i, 
							  description: brewery.description,
							  website: brewery.website)
end 

#for each brewery, get 10 different beers and insert into the database