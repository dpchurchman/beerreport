# Craft Beer in the United States
* Purpose: Completed for Case Study 1 of MSDS 6306 
* Author: David Churchman
* Last updated: 6/27/2017

# Raw Data Files
Beers
* Filename: beers.csv
* Description: A list of 2410 US craft beers with information about brewery, style, serving size, ABV and IBU. 

Breweries
* Filename breweries.csv
* Description: A list of 558 US breweries with information about the city and state of each brewery.

Relationship: "Brewery_id" in beers.csv and "Brew_ID" in breweries.csv is the common variable.

# Analysis Files
* BeerReport.md
* BeerReport.Rmd
* BeerReport.html
* Description: Using R markdown, this code merges Beers and Breweries and conducts a short analysis.  The md file is most readable on GitHub, and the html file is best suited for publication.

