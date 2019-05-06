APIs?
-Beer Advocate (reviews, ratings, etc.)
-BreweryDB(18e47a219accd2d3855fbcd74093dd68)
-https://github.com/gamache/beeradvocate
-https://github.com/tylerhunt/brewery_db

5 Models
1. Breweries (1:N Beers)
2. Beers (N:1 breweries), (N:N retailers) 
3. Retailers
4. BeerRetailers - Join table, signifies relationship between retailers and beers
5. User (N:N beers)
6. UserFavorites - Join Table, signifies relationship between users and their beers
7. Tags
8. BeerTags - Join table between beers and tags. 
9. Reviews? N:N between users and beers

Functionality

1. Breweries (CRUD)
2. Beers - breweries have CRUD of beers
3. Retailers (CRUD)
4. BeerRetailers (CRUD)
5. User (CRUD)
6. UserFavorites (CRUD)

High-Level
1. Application for breweries to list their various beers. 
2. Can see info about the brewery and the individual beers available (or upcoming?)
3. Retailers can create an account and add available beers to their list of available beers
4. Limited release beers 
5. Users can use tags to search for beers. Favorite / review beers?

User Stories (Skateboard)
	1. As a brewery, I want to…
		-Log in 
		-Add a new beer to my selection
		-Manage my selection (update existing beers, add limited releases, etc)
		-See all the retailers selling my beers
		-Manage inventory
	2. As a retailer, I want to…
		-Log in
		-Search for beers across breweries
		-Add a beer to my my tap list
			-Choose glass size
			-Set a price
			-Individual beer inventory (Availability)
		-Manage my tap list
		-Manage inventory
	3. As a customer, I want to…
		-Log in
		-Use adjective tags to search for my preferred beers
		-Favorite a beer 
		-Manage my favorited beers
		-See retailers who offer my favorite beers
		-Choose adjective tags for beers
		-Upvote / Downvote beer tags

CSS/HTML
	-Beer Show page
		-
		
		
	
Release 2.0
	-Reviews?
	-Breweries list limited release beers 	-Ability for retailers to purchase beers from breweries
	