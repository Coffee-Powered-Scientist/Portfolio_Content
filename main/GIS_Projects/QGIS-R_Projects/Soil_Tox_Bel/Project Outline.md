Project Outline:

Questions: What distribution does our toxin data have? Can we model this data with OLS? Is our data correlated with other measured variables (elevation, landuse)? Can we run other comparative statistics, such as ANOVA? 

For this project, the Meuse dataset was read in as a .csv file and converted to a .shp file for further analysis. A base-R Shapiro test, qqplot, and ggplot2 histogram were run for each toxin in the dataset (this is done separately in QGIS, but can be run altogether in Rstudio). A Kolmogorov-Smirlov test was done by loading in the nortest library.  The easystats package was downloaded into the QGIS-R libraries such that reports on basic stats test could automatically be made. 

Over the entire dataset (not regarding other groupings of the variables) I found that none of the toxins are normally distributed, neither in the data itself (histogram) (shapiro test) (kolmogorov-Smirlov test) nor the residuals (qqplot) .  All of the toxins (excluding lead) show somewhat right skewed distributions, lead shows a uniform distribution.

I ran a automated distribution fitting function through each metal data, presenting the the findings exactly in the "DistributionTest.odt" file. These results show the closest found distributions for the entire set of data for each metal. Other groupings in the data, such as elevation, landuse, liming, and/or soil type may be correlated to the data. Now, the objective is to explore each variable in relation to the concentration of toxins in the soil using correlation tests.

I will focus on landuse and elevation from here on out.  Landuse offers a set of codes, which we can use to group metals for further analysis (such as ANOVA or non-parametric ANOVA equivalents).  The idea here would be to see if metal concentration differs by landuse type by comparing the mean/median of each metal type compared by land use category.  Elevation offers numerical data in meters. We can thus relate two sets of continuous data to one another one a scatterplot. 





