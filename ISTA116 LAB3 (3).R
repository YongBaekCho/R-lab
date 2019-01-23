# Name: YongBaek, Cho
# Date: September 17 , 2017
# ISTA 116
# Lab Assignment 3


#1
plot(cdc$weight ~ cdc$wtdesire)
#The relationship has a slope above 1, it means that people generally want to lose some weight.


#2 
wdiff <- cdc$wtdesire - cdc$weight
# wdiff is numerical and discrete
# If an observation has wdiff of 0, the respondent is satisfied with their current weight
# If wdiff is negative, they want to lose weight, 
# if it is positive, they want to gain weight

#3
hist(wdiff, breaks = 40) 
summary(wdiff) - center 
#I used hist definition funcion on this probelm. it shows the shape of the distribution for a large set of data.
#The center is concentrated where most of the participants were focused around the -50 to 0 area.
#center: median of -10, mean of -14.59


#4
hist(wdiff, breaks = 40)
summary(cdc$wdiff)


#shape:unimodel, left skewed
#spread: Q1 = -21, Q3 = 0



#5
#In this graph, the spread tells us that participants on the right of 0, they want to gain more weight, and the participants on the left from 0, they want to lose weight.

#6
genwdiff <- data.frame(wdiff, cdc$gender)
summary(subset(genwdiff, cdc.gender == "m"))
summary(subset(genwdiff, cdc.gender == "f"))
boxplot(genwdiff$wdiff ~ genwdiff$cdc.gender)

#Women (median = -10) appear to want to lose a few more weight than men (median = -5). Interestingly, more men than women want to gain weight.

#7
# The data which is for men and 680 wtdesire might be data error.
# Also, the data which is for men and 601  wedesire might be data error.
# These data are the outliers in the data. 


#8
#mean of weight = 169.7
avgwt <- mean(cdc$weight)

#standard deviation = 40.08
sdwt <- sd(cdc$weight)

#-1 1 standard deviation below the mean = 169.7-40.08 = 129.62
#-2 1 standard deviation above the mean = 209.78
#-3 2 standard deviations below the mean = 89.54
#-4 2 standard deviations above the mean = 209.78

#9

# prob 1 - What proportion of heights are within 1 standard deviation of the mean?
avght <- mean(cdc$height)
#67.1829
sdht <- sd(cdc$height)
#4.1
instdev <- subset(cdc, height < (avght + sdht) & height > (avght - sdht))
dim(instdev)[1]/dim(cdc)[1]

#[1] 0.62125  62.125%

# prob 2 - What proportion of heights are within 2 standard deviations of the mean?
mean_height <- mean(cdc$height)
#67.1829
sdht <- 8.2 
#4.1*2 = 8.2

heights_within_two_sd <- subset(cdc, height < mean_height + sd_height & height > mean_height - sd_height)
dim(heights_within_two_sd)
#[19545]  9 
#Since there are 19545 observations in the required subset, out of a total of 20000 observations
#19545/20000 = 0.97725  97.725%

# prob 3 - What proportion of ages are within 1 standard deviation of the mean?
mean_age <- mean(cdc$age)
#45.0683
sd_age <- sd(cdc$age)
#17.1927
age_within_one_sd <- subset(cdc, age < mean_age + sd_age & age > mean_age - sd_age)

dim(age_within_one_sd)
#[1] 12806     9
#Since there are 12806 observations in the required subset, out of a total of 20000 observations
#12806/20000 =  0.6403  64.03%

# prob 4 - What proportion of ages are within 2 standard deviations of the mean?
mean_age <- mean(cdc$age)
#45.0683
sd_age <- 34.3854
age_within_two_sd <- subset(cdc, age < mean_age + sd_age & age > mean_age - sd_age)

dim(age_within_two_sd)
#[1] 19386     9
#Since there are 19386 observations in the required subset, out of a total of 20000 observations
#19386/20000 =  0.9693  96.93%



