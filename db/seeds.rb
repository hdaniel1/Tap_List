# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Brewery.find_or_create_by(name:"Breckenridge Brewery",
                            city: "Breckenridge",
                            state: "CO",
                            website: "http://www.breckbrew.com/",
                            description:"Breckenridge Brewery was founded in 1990 in Breckenridge, Colorado. In the past two plus decades Breckenridge Brewery has grown from a small 3,000-barrels-a-year brewpub to one of the most successful craft beer and restaurant companies in the nation. It now handcrafts more than 70,000 barrels of fresh beer annually and owns and operates five brewpubs and ale houses in the state of Colorado. For more information visit www.breckbrew.com.",
                            established: 1990
                            )
    Brewery.find_or_create_by(name:"Dock Street Brewery",
                            city: "Philadelphia",
                            state: "PA",
                            website: "http://www.dockstreetbeer.com",
                            description:"Founded in 1985, Dock Street Brewing Co. was the first microbrewery in Philadelphia and one of the first in the country.  Today, Dock Street is a small artisanal brewery that finds its home in a magnificent historic firehouse on the corner of 50th and Baltimore Ave., in a progressive, eclectic and counter-culture neighborhood that reflects Dock Street's philosophy.  Dock Street has a rich brewing history, a reputation for exceptional quality, innovation and brewing distinctive beers.  Dock Street continues to experiment and push the boundaries of the movement it helped build.",
                            established: 1985
                            )

    Brewery.find_or_create_by(name:"Lagunitas Brewing Company",
                            city: "Petaluma",
                            state: "CA",
                            website: "http://www.lagunitas.com/",
                            description:"From our earliest days of striving to make consistently good beer, and instead making beer that ranged from vile, to barely drinkable, to wonderful, to elegant, to questionable-at-best.",
                            established: 1993
                            )

    Brewery.find_or_create_by(name:"Laughing Dog Brewing",
                            city: "Ponderay",
                            state: "ID",
                            website: "http://www.laughingdogbrewing.com/",
                            description:"At Laughing Dog Brewing, what began with a dream for brews with more hops has turned into an insatiable desire to craft beers of all flavors, with a focus on quality, purity, and fun.",
                            established: 2005
                            )

    Brewery.find_or_create_by(name:"SweetWater Brewing Company",
                            city: "Atlanta",
                            state: "GA",
                            website: "http://www.sweetwaterbrew.com/",
                            description:"February 17, 1997 marked the official beginning of SweetWater Brewery, and a new style of brewing and selling beer in Atlanta as the boys wandered around Atlanta in an old van with Freddy's dog Badger.",
                            established: 1997
                            )

    Brewery.find_or_create_by(name:"Zero Gravity Craft Brewery",
                            city: "Burlington",
                            state: "VT",
                            website: "http://www.zerogravitybeer.com/",
                            description:"Superior craft beer out of Burlington, Vermont since 2004. Visit us at our original brewpub location located at American Flatbread, or our more recent brewery and tasting room located in Burlington's South End Arts District.",
                            established: 2004
                            )

    Brewery.find_or_create_by(name:"New Holland Brewing Company",
                            city: "Holland",
                            state: "MI",
                            website: "http://newhollandbrew.com/",
                            description:"New Holland Brewing Company’s deep roots in the craft industry go back to 1997. Our role as an integral member of the artisan approach is something we take seriously, yet engage lightheartedly.

We believe the art of craft lives in fostering rich experiences for our customers, through creating authentic beer, spirits and food while providing great service. Recognized for our creativity and artistry, our mission to improve the lives of craft consumers everywhere is seen in our diverse, balanced collection of beer and spirits.",
                            established: 1996
                            )

    Brewery.find_or_create_by(name:"Oskar Blues Brewery",
                            city: "Longmont",
                            state: "CO",
                            website: "http://www.oskarblues.com/",
                            description:"Oskar Blues Brewery is part of the Oskar Blues Grill and Brew restaurant and was located in Lyons, Colorado, near the city of Boulder. The brewery is now in Longmont, CO - a much larger town just east of Lyons. Oskar Blues is unique in that it serves craft-brewed beer in cans, contrary to the normal practice of bottling micro brews. The brewery is owned by Dale Katechis, a native of Florence, Alabama who brought canned beer and southern fried foods together for an interesting twist on the micro-brew pub.",
                            established: 1997
                            )
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

  beer_tag_words = ["award-winning", "balanced", "bitter", "bold", "brewed", "brewery-fresh", "bright", "cask-conditioned", "chilled", "classic"]

  beer_tag_words.each do |tag|
    Tag.find_or_create_by(description: tag)
  end
