# Name: YongBaek, Cho
# Date: September 10 , 2017
# ISTA 116
# Lab Assignment 2

# source1
source("http://www.openintro.org/stat/data/arbuthnot.R")
# source2
source("http://www.openintro.org/stat/data/present.R")

#1
dim(present)

#[1] 63 3
#present : The dimensions of the data frame are 63 * 3, meaning 63 rows and 3 columns.

#2
names(present)

# years, boys, girls

#3
str(present)
# from 1940 to 2002

#4
# we can summarise the counts as follows:

summary(present$boys + present$girls)

# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
2360399 3511262 3756547 3679515 4023830 4268326


summary(arbuthnot$boys + arbuthnot$girls)

# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
5612    9199   11813   11442   14723   16145 

# It is clear that there are many more births of boys and girls combined per year in the present day birth records than in Arbuthnot's records.
# The count per year is much lager in present data, they aren't simillar in scale.

#5

plot(x = arbuthnot$year, y = arbuthnot$boys/arbuthnot$girls, type = "l")

# The plot clearly shows that the ratio is always greater than 1. So,boys are often born more than girls. 

#6
plot(x = present$year, y = present$boys/present$girls, type = "l")

#The plot clearly shows that the ratio is always greater than 1, but there does appear to be a general decrease in the ratio over time

# Arbuthnot's data were taken between 1629 to 1710, where as the present data were taken beween 1940 to 2002.

#Arbuthnot's data is 19 years longer than present data.

#7
present[1, "year"]
# [1] 1940
present[3, "boys"]
# [1] 1444365

#8
# [],[[]] These brackets asking R to do to the data frame.

# [] extracts multiple elements from a vector, array, list, or data frame

# [[]] extracts a single element by name or position from a list or data frame.

#9
# The function which.max(): tells me that the maximum value of the total number.

#10
present$year[which.max(present$boys + present$girls)]
# [1] 1961
