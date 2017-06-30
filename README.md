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
The BeerReport code merges beers.csv and breweries.csv and conducts a short analysis, and is included in markdown, Rmarkdown, html and pdf format. As html is not fully rendered on github, BeerReport.pdf offerst the cleanest viewing without downloading a file.  The BeerReport code uses BeerMerge.R to merge and clean beers.csv and breweries.csv and uses CreateMap.R to create a map of the United States shaded by number of breweries.

Report in different formats
* BeerReport.md
* BeerReport.Rmd
* BeerReport.html
* BeerReport.pdf

Code modules used in BeerReport
* BeerMerge.R
* CreateMap.R


