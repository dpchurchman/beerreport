setwd("C:/Users/dpchu/Desktop")

#Read in the data
beers <- read.csv('beers.csv')
head(beers)
str(beers)

breweries <-read.csv('breweries.csv')
head(breweries)
str(breweries)


# A table displaying the number of breweries in each state.
table(breweries$State)


#Merge the 2 raw data files and do some basic cleaning
names(breweries)[names(breweries)=="Brew_ID"]<-"Brewery_id"
beermerge<-merge(beers, breweries, by = "Brewery_id")
names(beermerge)[names(beermerge)=="Name.x"] <- "BeerName"
names(beermerge)[names(beermerge)=="Name.y"] <- "BreweryName"
head(beermerge)
tail(beermerge)
beermerge <- beermerge[order(beermerge$State),]
beermerge$State <- trimws(beermerge$State)

#Number of NAs in each variable
colSums(is.na(beermerge))

#Median IBU by state
stateIBU<-aggregate(IBU~State, beermerge,median, na.action=na.omit)
stateIBU

#Bar graph of IBU
library("ggplot2")
ggplot(data=stateIBU, aes(x=State, y=IBU, fill=-IBU))+scale_fill_distiller(palette="Reds")+
  geom_bar(stat="identity")+theme(text = element_text(size=10),
                                  axis.text.x = element_text(angle=90, hjust=1,vjust=.5))
#Maine has the most bitter beer



#Median ABV by state
stateABV<-aggregate(ABV~State, beermerge, median, na.action = na.omit)
stateABV

ggplot(data=stateABV, aes(x=State, y=ABV, fill=ABV)) +
  geom_bar(stat="identity")+theme(text = element_text(size=10),
                                  axis.text.x = element_text(angle=90, hjust=1,vjust=.5))


#ABV vs. IBU
ggplot(data=beermerge,aes(IBU,ABV))+geom_point(color="blue")+geom_smooth(method=lm,color="red")

cor(IBU, ABV, use = "complete.obs",method=("pearson"))
