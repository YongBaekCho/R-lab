# Name: YongBaek, Cho
# Date: November 26 , 2017
# ISTA 116
# Lab Assignment 13

#1
#plot(mlb11$at_bats,mlb11$runs)
# The scatterplot are used to display the relationship between runs and at_bats. It shown an linear relationship.

#2
#cor(mlb11$runs, mlb11$at_bats)
#[1] 0.610627

#3
# plot_ss(x = mlb11$at_bats, y = mlb11$runs)

# Call:
# lm(formula = y ~ x, data = pts)
# 
# Coefficients:
# (Intercept)            x  
#  -2789.2429       0.6305  
# 
# Sum of Squares:  123721.9

# The line I specified will be shown in black and the residuals in blue. Note that there are 30 residuals, one for each of the 30 observations.
#The smallest sum of squares that i got after running plot_ss function several times is 123721.9 with the coefficients x -> 0.5882 Intercept -> -2549.4628
#4
#m1 <- lm(runs ~ at_bats, data = mlb11)
#y^ = ???2789.2429 + 0.6305 atbats

#5
#summary(m1)
#Call:
#lm(formula = runs ~ at_bats, data = mlb11)

#Residuals:
#  Min      1Q  Median      3Q     Max 
#-125.58  -47.05  -16.59   54.40  176.87 
#
#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept) -2789.2429   853.6957  -3.267 0.002871 ** 
#  at_bats         0.6305     0.1545   4.080 0.000339 ***
#  ---
#  Signif. codes:  0 ?**?0.001 ?*?0.01 ??0.05 ??0.1 ??1

#Residual standard error: 66.47 on 28 degrees of freedom
#Multiple R-squared:  0.3729,	Adjusted R-squared:  0.3505 
#F-statistic: 16.65 on 1 and 28 DF,  p-value: 0.0003388


#First, the formula used to describe the model is shown at the top. After the formula you find the five-number summary of the residuals. The "Coefficients" table shown next is key its first column displays the linear model's y-intercept and the coefficient of at_bats. With this table, I can write down the least squares regression line for the linear model:

#y = ???2789.2429+0.6305???atbats


# One last piece of information I will discuss from the summary output is the Multiple R-squared, or more simply, R2R2. The R2R2 value represents the proportion of variability in the response variable that is explained by the explanatory variable. 
#For this model, 37.3% of the variability in runs is explained by at-bats.

#6
#Linearity: i already checked if the relationship between runs and at-bats is linear using a scatterplot. We should also verify this condition with a plot of the residuals vs. at-bats. Recall that any code following a # is intended to be a comment that helps understand the code but is ignored by R.
#plot(m1$residuals ~ mlb11$at_bats)
#abline(h = 0, lty = 3)

#If the residuals are approximately normaly distributed then the normal quantile-quantile plot of the residuals will result in an approximately straight line.

#Nearly normal residuals : As you can clearly see the normal quantile-quantile plot of the residuals indicates a pretty straight line so we can safely say that the residuals are approximately normaly distributed and the model meets the nearly normal residuals condition.
#hist(m1$residuals)

#or a normal probability plot of the residuals.
#qqnorm(m1$residuals)
#qqline(m1$residuals) 

# Constant variability:

#Based on the plot the variability of points around the least squares line remains roughly constant so the condition constant variability has been met.

#7
#plot(mlb11$runs ~ mlb11$at_bats, main = "Relationship between Runs and Home runs", xlab = "Home Runs", ylab = "Runs")
#cor(mlb11$runs, mlb11$homeruns)
#[1] 0.7915577

#m2 <- lm(runs ~ homeruns, data = mlb11)
#summary(m2)
# 
# Call:
# lm(formula = runs ~ homeruns, data = mlb11)
# 
# Residuals:
#     Min      1Q  Median      3Q     Max 
# -91.615 -33.410   3.231  24.292 104.631 
# 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 415.2389    41.6779   9.963 1.04e-10 ***
# homeruns      1.8345     0.2677   6.854 1.90e-07 ***
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1 
# 
# Residual standard error: 51.29 on 28 degrees of freedom
# Multiple R-squared: 0.6266,  Adjusted R-squared: 0.6132 
# F-statistic: 46.98 on 1 and 28 DF,  p-value: 1.9e-07

#Equation of the regression line for the relationship between Run and Home Runs

#y^ = 415.2389 + 1.8345 * homeruns

#By looking at the plot I can say that the relationship between runs and home runs is linear positive and relatively strong as the correlation coefficient 0.7916 is closer to +1

#9

#m3 <- lm(runs ~ strikeouts, data = mlb11)
#m4 <- lm(runs ~ hits, data = mlb11)
#m5 <- lm(runs ~ bat_avg, data = mlb11)
#m6 <- lm(runs ~ stolen_bases, data = mlb11)
#m7 <- lm(runs ~ wins, data = mlb11)



#summary(m3)
## 
## Call:
## lm(formula = runs ~ strikeouts, data = mlb11)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -132.27  -46.95  -11.92   55.14  169.76 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 1054.7342   151.7890   6.949 1.49e-07 ***
## strikeouts    -0.3141     0.1315  -2.389   0.0239 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 76.5 on 28 degrees of freedom
## Multiple R-squared:  0.1694, Adjusted R-squared:  0.1397 
## F-statistic: 5.709 on 1 and 28 DF,  p-value: 0.02386

#summary(m4)
## 
## Call:
## lm(formula = runs ~ hits, data = mlb11)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -103.718  -27.179   -5.233   19.322  140.693 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept) -375.5600   151.1806  -2.484   0.0192 *  
## hits           0.7589     0.1071   7.085 1.04e-07 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 50.23 on 28 degrees of freedom
## Multiple R-squared:  0.6419, Adjusted R-squared:  0.6292 
## F-statistic:  50.2 on 1 and 28 DF,  p-value: 1.043e-07

#summary(m5)

## 
## Call:
## lm(formula = runs ~ bat_avg, data = mlb11)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -94.676 -26.303  -5.496  28.482 131.113 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)   -642.8      183.1  -3.511  0.00153 ** 
## bat_avg       5242.2      717.3   7.308 5.88e-08 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 49.23 on 28 degrees of freedom
## Multiple R-squared:  0.6561, Adjusted R-squared:  0.6438 
## F-statistic: 53.41 on 1 and 28 DF,  p-value: 5.877e-08

#summary(m6)

## 
## Call:
## lm(formula = runs ~ stolen_bases, data = mlb11)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -139.94  -62.87   10.01   38.54  182.49 
## 
## Coefficients:
##              Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  677.3074    58.9751  11.485 4.17e-12 ***
## stolen_bases   0.1491     0.5211   0.286    0.777    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 83.82 on 28 degrees of freedom
## Multiple R-squared:  0.002914,   Adjusted R-squared:  -0.0327 
## F-statistic: 0.08183 on 1 and 28 DF,  p-value: 0.7769

#summary(m7)F

## 
## Call:
## lm(formula = runs ~ wins, data = mlb11)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -145.450  -47.506   -7.482   47.346  142.186 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  342.121     89.223   3.834 0.000654 ***
## wins           4.341      1.092   3.977 0.000447 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 67.1 on 28 degrees of freedom
## Multiple R-squared:  0.361,  Adjusted R-squared:  0.3381 
## F-statistic: 15.82 on 1 and 28 DF,  p-value: 0.0004469


#After running the summary statistics for all the variables, the variable which best predicts the runs based on R2 happened to be bat_avg
#plot(mlb11$runs ~ mlb11$bat_avg, main = "Relationship between Runs and Batting Avg", xlab = "Batting Avg", ylab = "Runs")
#m4 <- lm(runs ~ bat_avg, data = mlb11)
#abline(m4)

#hist(m4$residuals)

#qqnorm(m4$residuals)
#qqline(m4$residuals)

#cor(mlb11$runs, mlb11$bat_avg)
# [1] 0.8099859
#summary(m4)
# 
# Call:
# lm(formula = runs ~ bat_avg, data = mlb11)
# 
# Residuals:
#     Min      1Q  Median      3Q     Max 
# -94.676 -26.303  -5.496  28.482 131.113 
# 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept)   -642.8      183.1  -3.511  0.00153 ** 
# bat_avg       5242.2      717.3   7.308 5.88e-08 ***
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1 
# 
# Residual standard error: 49.23 on 28 degrees of freedom
# Multiple R-squared: 0.6561,  Adjusted R-squared: 0.6438 
# F-statistic: 53.41 on 1 and 28 DF,  p-value: 5.877e-08

#10
#model <- lm(runs ~ at_bats + hits + homeruns + bat_avg + strikeouts + stolen_bases + wins, data = mlb11)
#summary(model)

#Call:
#  lm(formula = runs ~ at_bats + hits + homeruns + bat_avg + strikeouts + 
#       stolen_bases + wins, data = mlb11)
#
#Residuals:
#  Min      1Q  Median      3Q     Max 
#-34.273 -17.965   2.141  20.011  40.257 

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept)   2.025e+03  3.750e+03   0.540 0.594549    
#at_bats      -4.764e-01  6.679e-01  -0.713 0.483159    
#hits          2.047e+00  2.599e+00   0.787 0.439522    
#homeruns      1.030e+00  2.220e-01   4.639 0.000127 ***
#  bat_avg      -7.568e+03  1.458e+04  -0.519 0.608816    
#strikeouts    4.780e-02  6.733e-02   0.710 0.485216    
#stolen_bases  5.207e-01  1.705e-01   3.053 0.005825 ** 
#  wins          9.586e-01  6.783e-01   1.413 0.171559    
#---
#  Signif. codes:  0 ?**?0.001 ?*?0.01 ??0.05 ??0.1 ??1

#Residual standard error: 27.08 on 22 degrees of freedom
#Multiple R-squared:  0.9182,	Adjusted R-squared:  0.8922 
#F-statistic:  35.3 on 7 and 22 DF,  p-value: 1.562e-10