# Name: YongBaek, Cho
# Date: November 26 , 2017
# ISTA 116
# Lab Assignment 13

#1
# It appears to be derived from sample statistics
# The assumption is that the sample was simple randomly selected because I want to make sure all groups
# are evenly or as evenly selected. It is also obvious the sample size must be large.

#2

# us12 <- subset(atheism, nationality == "United States" & year == "2012")

#3

#The rows in table six refer to the 57 countires where individuals were surved by one of three means. The rows in the data set represent the nationality of each individual surved.
#To investigate the link between these two ways of organizing this data, take a look at the estimated proportion of atheists in the United States. Towards the bottom of Table 6, I see that this is 5%. I should be able to come to the same number using the  atheism data.

#4
#by(us12$nationality, us12$response, length)
#output
#us12$response: atheist
#[1] 50
#------------------------------------------------------- 
#  us12$response: non-atheist
#[1] 952
#50/(952+50)
#[1] 0.0499
#The proportion of atheist responses for the US is 0.0499 which rounds to 0.05 in table 6.


#prop.test(table(atheism$year))

#1-sample proportions test with continuity correction

#data:  table(atheism$year), null probability 0.5
#X-squared = 2843.3, df = 1, p-value < 2.2e-16
#alternative hypothesis: true p is not equal to 0.5
#95 percent confidence interval:
#  0.4068841 0.4133936
#sample estimates:
#  p 
#0.410135 


#In a confidence level of 95%, in our sample there was a portion of anywhere from 3.7% to 6.5% of atheists, this means that in 95% of all possible 

#5

#t1 <- table(atheism$year)
# prop.test(t, p = 0.13)

#1-sample proportions test with continuity correction

#data:  t, null probability 0.13
#X-squared = 61079, df = 1, p-value < 2.2e-16
#alternative hypothesis: true p is not equal to 0.13
#95 percent confidence interval:
#  0.4068841 0.4133936
#sample estimates:
#  p 
#0.410135 


#6
#inference(us12$response, us12$year, est = "proportion", type = "ci", method = "theoretical", success = "atheist")
# Response variable: categorical, Explanatory variable: categorical
# Difference between two proportions -- success: atheist
# Summary statistics:
#              x
# y             2005 2012  Sum
#   atheist       10   50   60
#   non-atheist  992  952 1944
#   Sum         1002 1002 2004

# Observed difference between proportions (2005-2012) = -0.0399
# Check conditions:
#    2005 : number of successes = 10 ; number of failures = 992 
#    2012 : number of successes = 50 ; number of failures = 952 
# Standard error = 0.0076 
# 95 % Confidence interval = ( -0.0547 , -0.0251 )

#There is convincing evidence that the United States has seen a change in its atheism index between 2005 and 2012.(TRUE)
#95 % Confidence interval = ( -0.0547 , -0.0251 )

#7

#n = 1000
#p = seq(0, 1, 0.01)
#me = 2 * sqrt(p * (1 - p)/n)

#8
#plot(me ~ p, ylab = "Margin of Error", xlab = "Population Proportion")
#The relationship between p and me is parabolic where me increases with p with diminishing results until it reaches a point where it starts to decrease as p increases.

#9

#spain = subset(atheism, atheism$nationality == "Spain" & atheism$year == "2012")
#proportion = sum(spain$response == 'atheist')  / length(spain$response)
#inference(spain$response, spain$year, est = "proportion", type = "ci", method = "theoretical", success = "atheist")

#prop.test(table(spain$response))

#prop.test(table(spain$response))

#1-sample proportions test with continuity correction

#data:  table(spain$response), null probability 0.5
#X-squared = 768.42, df = 1, p-value < 2.2e-16
#alternative hypothesis: true p is not equal to 0.5
#95 percent confidence interval:
#  0.07432656 0.10840018
#sample estimates:
#  p 
#0.08995633 

#spain = subset(atheism, atheism$nationality == "Spain" & atheism$year == "2005")
#prop.test(table(spain$response))

#1-sample proportions test with continuity correction

#data:  table(spain$response), null probability 0.5
#X-squared = 730.56, df = 1, p-value < 2.2e-16
#alternative hypothesis: true p is not equal to 0.5
#95 percent confidence interval:
#  0.08386459 0.11957051
#sample estimates:
#  p 
#0.100349 



# Response variable: categorical, Explanatory variable: categorical
# Difference between two proportions -- success: atheist
# Summary statistics:
#              x
# y             2005 2012  Sum
#   atheist      115  103  218
#   non-atheist 1031 1042 2073

# Observed difference between proportions (2005-2012) = 0.0104
# Check conditions:
#    2005 : number of successes = 115 ; number of failures = 1031 
#    2012 : number of successes = 103 ; number of failures = 1042 
# Standard error = 0.0123 
# 95 % Confidence interval = ( -0.0136 , 0.0344 )


#There is NOT convincing evidence that Spain has seen a change in its atheism index between 2005 and 2012.

#10
#Colombia = subset(atheism, atheism$nationality == "Colombia" & atheism$year == "2012")
#proportion1 = sum(Colombia$response == 'atheist')  / length(Colombia$response)
#inference(Colombia$response, Colombia$year, est = "proportion", type = "ci", method = "theoretical", success = "atheist")

#prop.test(table(Colombia$response))

#1-sample proportions test with continuity correction

#data:  table(Colombia$response), null probability 0.5
#X-squared = 534.26, df = 1, p-value < 2.2e-16
#alternative hypothesis: true p is not equal to 0.5
#95 percent confidence interval:
#  0.01822721 0.04745579
#sample estimates:
#  p 
#0.02970297 

#Brazil = subset(atheism, atheism$nationality == "Brazil" & atheism$year == "2012")
#proportion1 = sum(Brazil$response == 'atheist')  / length(Brazil$response)
#inference(Brazil$response, Brazil$year, est = "proportion", type = "ci", method = "theoretical", success = "atheist")

#prop.test(table(Brazil$response))

#1-sample proportions test with continuity correction

#data:  table(Brazil$response), null probability 0.5
#X-squared = 1920.8, df = 1, p-value < 2.2e-16
#alternative hypothesis: true p is not equal to 0.5
#95 percent confidence interval:
#  0.00627988 0.01568210
#sample estimates:
#  p 
#0.00999001 



#There is NOT convincing evidence that Colombia has seen a change in its atheism index between 2005 and 2012.