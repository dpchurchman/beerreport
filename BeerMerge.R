#Change the name of Brew_ID to be identical in both sets
names(breweries)[names(breweries)=="Brew_ID"]<-"Brewery_id"
#Merge beers.csv and breweries.csv
beermerge<-merge(beers, breweries, by = "Brewery_id")
#Rename for clarity
names(beermerge)[names(beermerge)=="Name.x"] <- "BeerName"
names(beermerge)[names(beermerge)=="Name.y"] <- "BreweryName"
#Order by state
beermerge <- beermerge[order(beermerge$State),]
#Trim extra white space
beermerge$State <- trimws(beermerge$State)
#Export merged and cleaned CSV file
write.csv(beermerge, file='beermerge.csv' )

