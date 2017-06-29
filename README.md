# Craft Beer in the United States
* Purpose: Completed for Case Study 1 of MSDS 6306 
* Author: David Churchman
* Last updated: 6/27/2017

# Raw Data Files
* Beers
1. Filename: beers.csv
2. Description: A list of 2410 US craft beers with information about brewery, style, serving size, ABV and IBU. 

* Breweries
1. Filename breweries.csv
2. Description: A list of 558 US breweries with information about the city and state of each brewery.

Relationship: "Brewery_id" in beers.csv and "Brew_ID" in breweries.csv is the common variable.

# Analysis Files
Using R markdown, the BeerReport code merges beers.csv and breweries.csv and conducts a short analysis.  The md file is most readable on GitHub, and the html file is best suited for publication. The BeerReport code uses CreateMap.R to create a map of the United States by number of breweries.

* BeerReport.md
* BeerReport.Rmd
* BeerReport.html
* CreateMap.R


