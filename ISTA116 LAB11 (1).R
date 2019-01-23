# Name: YongBaek, Cho
# Date: November 12, 2017
# ISTA 116
# Lab Assignment 11


#1
# H0 = The average number of weeks for children in North Carolina matches that claim.
# HA = The average number of weeks for children in North Carolina does not match that claim.

#2
#hist(nc$weeks)
#It looks like right skewed histogram. 
# Hypothesis tests are a very general group of tests.
# No, the data does not have to be normally distributed.
# However, I need to use a test that is specifically designed for the type of data I am using.

#3
# sample 
# length(which(nc$weeks == 40))
# 140
#mean(nc$weeks)
#[1] 38.4675
#sd(nc$weeks)
#[1] 2.753802

# a <- 38.4675
# s <- 2.753802
# n <- 140
# s/sqrt(n)  
# [1] 0.2327387
# error <- s/sqrt(n) 

#4
#qnorm(0.99)
#[1] 2.326348

#5
# a - error
# [1] 38.23476(lower)
# a + error
# [1] 38.70024(upper)
# If the value specified in H0 lies within the interval(that is, is not less than the lower bound or greater than the upper bound), I file to reject H0(Null hypothesis).

#6
# (40-38.4675)/error = 6.584636

#7
# 2*(1-pnorm(2.326348))
# [1] 0.01999999
# I used the two-tailed test, because the pregnancy period may be shorter or longer than 40 weeks.
# two tailed test - If I am using a significance level of 0.05, a two-tailed test allots half of your alpha to testing the statistical significance in one direction and half of your alpha to testing statistical significance in the other direction.
# one tailed test - If I am using a significance level of .05, a one-tailed test allots all of your alpha to testing the statistical significance in the one direction of interest.  
# A two tailed test is a test the critical area of a distribution is two-sided and tests whether a sample is greater than or less than a certain range of values

#8
# n <- 194
# se <- s/sqrt(n) 
#rejection.cutoff <- qnorm(0.05, 39.6, error)


#9
# pnorm(rejection.cutoff, 39.6, se)
#[1] 0.05
# I would say and be statisfied that the power of this test to detect a difference of 1 week is 0.05.

#10
# rejection.cutoff <- qnorm(0.05, 39, error)
# pnorm(rejection.cutoff, 39, se)
#  I would say and be statisfied that the power of this test to detect a difference of 1 week is 0.05.
# The power of thses two test to detect a differnce is same.