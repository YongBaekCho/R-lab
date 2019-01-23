# Name: YongBaek, Cho
# Date: November 18, 2017
# ISTA 116
# Lab Assignment 11


#1
#by(nc$weight, nc$habit, mean)

#nc$habit: nonsmoker
#[1] 7.144273
# --------------------------------------------------------------------------- 
# nc$habit: smoker
# [1] 6.82873

#2

# inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, 
# alternative = "twosided", method = "theoretical")

# Response variable: numerical, Explanatory variable: categorical
# Difference between two means
# Summary statistics:
# n_nonsmoker = 873, mean_nonsmoker = 7.1443, sd_nonsmoker = 1.5187
# n_smoker = 126, mean_smoker = 6.8287, sd_smoker = 1.3862

#3
#H0 : There is no difference between average weights of babies born to smoking and non-smoking mothers
#HA : There is a difference between average weights of babies born to smoking and non-smoking mothers

#4
# t.test(weight ~ habit, data = nc, conf.level = 0.95)

#Welch Two Sample t-test

#data:  weight by habit
#t = 2.359, df = 171.32, p-value = 0.01945
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  0.05151165 0.57957328
#sample estimates:
#  mean in group nonsmoker    mean in group smoker 
#7.144273                6.828730 

#5
#t.test(weight ~ habit, data = nc )

#Welch Two Sample t-test

#data:  weight by habit
#t = 2.359, df = 171.32, p-value = 0.01945
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  0.05151165 0.57957328
#sample estimates:
#  mean in group nonsmoker    mean in group smoker 
#7.144273                6.828730 

#6
#t.test(nc$weeks, data = nc, conf.level = 0.95)

#One Sample t-test

#data:  nc$weeks
#t = 413.1, df = 997, p-value < 2.2e-16
#alternative hypothesis: true mean is not equal to 0
#95 percent confidence interval:
#  38.15257 38.51677
#sample estimates:
#  mean of x 
#38.33467 

#7
#t.test(nc$weeks, data = nc, conf.level = 0.90)

#One Sample t-test

#data:  nc$weeks
#t = 413.1, df = 997, p-value < 2.2e-16
#alternative hypothesis: true mean is not equal to 0
#90 percent confidence interval:
#  38.18189 38.48745
#sample estimates:
#  mean of x 
#38.33467

#8
#The null hypothesis is the average weight gained by younger mothers are not different from the average weight gained by mature mothers. Based on the test statics of p-value of 0.8526 there is strong evidence that we fail to reject the null hypothesis that the average weight gained by younger mothers are not different from the average weight gained by mature mothers.
#One quantitative and one categorical variable
#Difference between two means
#n_mature mom = 133 ; n_younger mom = 867 
#Observed difference between means = 0.0283
#H0: mu_mature mom - mu_younger mom = 0 
#HA: mu_mature mom - mu_younger mom != 0 

#9
#Based on the summary data and the boxplot the age cutoff for younger and mature mothers is 35. Look at the summary data the max age for younger mom is 34, whereas the mininum age for mature mother is 35. In the boxplot for the age of mature mom the minimum value of a data set is 35.
#by(nc$mage, nc$mature,summary)
#nc$mature: mature mom
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#35.0    35.0    37.0    37.2    38.0    50.0 
#-------------------------------------------------------- 
#  nc$mature: younger mom
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#13.0    21.0    25.0    25.4    30.0    34.0 

#boxplot(nc$mage[nc$mature == "mature mom"])

#10
#I am interested in researching the relationship between mothers' ages and the term of their pregnancy. The null hypothesis will be that there is no relationship between mothers' ages and the term of their pregnancy.
#inference(data = nc$mage, group = nc$premie, est = "mean", type = "ht", null = 0,alternative = "twosided", method = "theoretical",order = c("full term","premie"))
#One quantitative and one categorical variable
#Difference between two means
#n_full term = 846 ; n_premie = 152 
#Observed difference between means = 0.125
#H0: mu_full term - mu_premie = 0 
#HA: mu_full term - mu_premie != 0 
#Standard error = 0.57 
#Test statistic: Z =  0.219 
#p-value:  0.8266 

#based on the test statics of p-value of 0.8266 there is strong evidence that we fail to reject the null hypothesis there is no relationship between mothers' ages and the term of their pregnancy.
