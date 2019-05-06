# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'brewery_db'

# brewery_db = BreweryDB::Client.new do |config|
#   config.api_key = '18e47a219accd2d3855fbcd74093dd68'
# end
#
# brewery_db.breweries.all.each do |brewery|
# 	Brewery.find_or_create_by(name: brewery.name,
# 							  established: brewery.established.to_i,
# 							  description: brewery.description,
# 							  website: brewery.website)
# end

#for each brewery, get 10 different beers and insert into the database


### Beers for Brekenridge Brewery ###

  Beer.find_or_create_by(name: "Breckenridge Christmas Ale",
  ABV: 7.4,
  style: "American Strong Pale",
  brewery_id: 1)

  Beer.find_or_create_by(name: "Agave Wheat",
  ABV: 5.9,
  style: "Wheat Ale",
  brewery_id: 1)

  Beer.find_or_create_by(name: "Avalanche Ale",
  ABV: 4.4,
  style: "Amber",
  brewery_id: 1)

  Beer.find_or_create_by(name: "Regal Pilsner",
  ABV: 7.0,
  style: "American Pilsener",
  brewery_id: 1)

  Beer.find_or_create_by(name: "Breck IPA",
  ABV: 6.3,
  style: "American IPA",
  brewery_id: 1)

### Beers for Dock Street Brewery ###

  Beer.find_or_create_by(name: "Bohemian Dock Street Pilsner",
  ABV: 5.0,
  style: "German Pilsener",
  brewery_id: 2)

  Beer.find_or_create_by(name: "Bubbly Wit",
  ABV: 7.1,
  style: "Belgian Blonde",
  brewery_id: 2)

  Beer.find_or_create_by(name: "Cinnister Stout",
  ABV: 5.0,
  style: "American Stout",
  brewery_id: 2)

  Beer.find_or_create_by(name: "Coco Nuts",
  ABV: 5.0,
  style: "Saison",
  brewery_id: 2)

  Beer.find_or_create_by(name: "Pimp My Ride",
  ABV: 7.8,
  style: "Imperial IPA",
  brewery_id: 2)

### Beers for Lagunitas Brewing Company ###

  Beer.find_or_create_by(name: "12th Of Never",
  ABV: 5.5,
  style: "American Pale",
  brewery_id: 3)

  Beer.find_or_create_by(name: "A Little Sumpin' Sumpin'",
  ABV: 7.5,
  style: "American Pale",
  brewery_id: 3)

  Beer.find_or_create_by(name: "Aunt Sally",
  ABV: 5.7,
  style: "Sour",
  brewery_id: 3)

  Beer.find_or_create_by(name: "Brown Shugga",
  ABV: 9.9,
  style: "American Strong Pale",
  brewery_id: 3)

  Beer.find_or_create_by(name: "Bitter Oats",
  ABV: 10.5,
  style: "Imperial IPA",
  brewery_id: 3)

### Beers for Laughing Dog Brewing ###

  Beer.find_or_create_by(name: "Alpha Dog Imperial IPA",
  ABV: 8.5,
  style: "Imperial IPA",
  brewery_id: 4)


  Beer.find_or_create_by(name: "Anubis Imperial Coffee Porter",
  ABV: 8.0,
  style: "Brown Porter",
  brewery_id: 4)


  Beer.find_or_create_by(name: "De Achste Hond Peach Sour",
  ABV: 7.0,
  style: "Sour",
  brewery_id: 4)


  Beer.find_or_create_by(name: "Devil Dog Imperial IPA",
  ABV: 10.8,
  style: "Imperial IPA",
  brewery_id: 4)


  Beer.find_or_create_by(name: "Dogs of Helles",
  ABV: 4.0,
  style: "Maibock",
  brewery_id: 4)

### Sweetwater Brewing Company ###

  Beer.find_or_create_by(name: "Georgia Brown",
  ABV: 5.8,
  style: "American Brown",
  brewery_id: 5)

  Beer.find_or_create_by(name: "Goin' Coastal",
  ABV: 6.1,
  style: "American IPA",
  brewery_id: 5)

  Beer.find_or_create_by(name: "Grass Monkey",
  ABV: 5.4,
  style: "Wheat Ale",
  brewery_id: 5)

  Beer.find_or_create_by(name: "Ground Score",
  ABV: 7.1,
  style: "American Pale",
  brewery_id: 5)

  Beer.find_or_create_by(name: "Guide Beer",
  ABV: 4.0,
  style: "American Pale",
  brewery_id: 5)

### Zero Gravity Brewing company ###

  Beer.find_or_create_by(name: "Extra Stout",
  ABV: 5.3,
  style: "Dry Irish Stout",
  brewery_id: 6)

  Beer.find_or_create_by(name: "Funkytown",
  ABV: 6.0,
  style: "Wild Beer",
  brewery_id: 6)

  Beer.find_or_create_by(name: "Fuzzworthy",
  ABV: 5.9,
  style: "American IPA",
  brewery_id: 6)

  Beer.find_or_create_by(name: "Gr8ful Anniversary Ale",
  ABV: 5.2,
  style: "Fruit Beer",
  brewery_id: 6)

  Beer.find_or_create_by(name: "Grand Royal",
  ABV: 8.3,
  style: "Imperial IPA",
  brewery_id: 6)

### New Holland Brewing Company

  Beer.find_or_create_by(name: "Beerhive",
  ABV: 8.4,
  style: "Belgian Tripel",
  brewery_id: 7)

  Beer.find_or_create_by(name: "Black Mad Hatter India Pale Ale",
  ABV: 5.5,
  style: "Black Ale",
  brewery_id: 7)

  Beer.find_or_create_by(name: "Dragon’s Milk White",
  ABV: 6.0,
  style: "Stout",
  brewery_id: 7)

  Beer.find_or_create_by(name: "Blue Sunday",
  ABV: 7.0,
  style: "Sour",
  brewery_id: 7)

  Beer.find_or_create_by(name: "Cabin Fever",
  ABV: 6.5,
  style: "American Brown",
  brewery_id: 7)

### Oskar Blues Brewery ###

  Beer.find_or_create_by(name: "Cornlaboration",
  ABV: 5.8,
  style: "American Lager",
  brewery_id: 8)

  Beer.find_or_create_by(name: "Dale's Pale Ale Nitro",
  ABV: 6.5,
  style: "American Pale",
  brewery_id: 8)

  Beer.find_or_create_by(name: "Old Double Bagger Barleywine",
  ABV: 3.2,
  style: "American Barleywine",
  brewery_id: 8)

  Beer.find_or_create_by(name: "Smoke on The Water",
  ABV: 7.0,
  style: "Smoke Beer",
  brewery_id: 8)

  Beer.find_or_create_by(name: "All Colorado Apricot Wheat",
  ABV: 5.5,
  style: "Fruit Wheat Ale",
  brewery_id: 8)
