# Name: YongBaek, Cho
# Date: October 22 , 2017
# ISTA 116
# Lab Assignment 8


#1
# fdims <- subset(bdims, sex == 0)
# hist(fdims$hgt,main="Female Heights",xlab="Height")
# Female height seems to follow normal distribution as well.
# This histogram is normally distribute. 
# This normal cruve should have the same mean and standard deviation as the data.

#2

#x <- seq(147.2, 182.9, by = 0.1)

#3

#fhgtmean <- mean(fdims$hgt)
#fhgtsd   <- sd(fdims$hgt)
#y <- dnorm(x = x, mean = fhgtmean, sd = fhgtsd)

#4

#hist(fdims$hgt, probability = TRUE)
#lines(x = x, y = y, col = "blue")
#This line should look like a normal distribution. Also, this is line graph which based on the histogram. 
# To create y, we use dnorm to calculate the density of each of those x-values in a distribution that is normal with mean fhgtmean and standard deviation fhgtsd. The final command draws a curve on the existing plot (the density histogram) by connecting each of the points specified by x and y.
# The plot for female heights shows points that tend to follow the line but with some errant points towards the tails.

#5
#qqnorm(fdims$hgt)
#qqline(fdims$hgt)
#A data set that is normal will result in a probability plot where the points closely follow the line
#

#6
# sim_norm <- rnorm(n = length(fdims$hgt), mean = fhgtmean, sd = fhgtsd)
# The charts provide evidence that the female heights are nearly normal.
# The first argument indicates how many numbers we'd like to generate, which we specify to be the same
# number of heights in the fdims data set using the length function. The last two arguments determine the
# mean and standard deviation of the normal distribution from which the sample will be generated.
# We can take a look at the shape of simulated data set.


#7
# qqnormsim(fdims$hgt)
# 

#8
#fwgtmean<-mean(fdims$wgt)
# [1] 60.6

#fwgtsd<-sd(fdims$wgt)
# [1] 9.616
#hist(fdims$wgt,probability=TRUE)
#x <- seq(42, 105.2, by = 0.1)
#y<-dnorm(x=x,mean=fwgtmean,sd=fwgtsd)
#lines(x = x, y = y,col="blue")

#qqnorm(fdims$wgt)
#qqline(fdims$wgt)

#sim_wgtnorm<-rnorm(n=length(fdims$wgt),mean=fwgtmean,sd=fwgtsd)

#qqnorm(sim_wgtnorm)
#qqline(sim_wgtnorm)

# Age
#fwgtmean<-mean(fdims$age)
# [1] 28.76923
#fwgtsd<-sd(fdims$age)
#[1] 8.85319
#hist(fdims$age,probability=TRUE)
#x <- seq(18, 67, by = 0.1)
#y<-dnorm(x=x,mean=fwgtmean,sd=fwgtsd)
#lines(x = x, y = y,col="blue")

#qqnorm(fdims$age)
#qqline(fdims$age)

#sim_agenorm<-rnorm(n=length(fdims$age),mean=fwgtmean,sd=fwgtsd)
#qqnorm(sim_agenorm)
#qqline(sim_agenorm)

# Both are not so normal distribution, not as much as the last case. Nor normalized, and skewed to the left, because of some positive outliers on tails.
# If we were to remove the samples outside of the first Standard deviation, they would be more normalized.

#9

#1 - pnorm(q = 182, mean = fhgtmean, sd = fhgtsd)
# [1] 0.004434387
#If we assume that female heights are normally distributed, we can find this probability by calculating a Z score and consulting a Z table(normal probability table)
# the function pnorm gives the area under the normal curve below a given value,q , with a given mean and standard deviation. 
# If the women is taller than 182cm, we have to take one minus that probability.

#10

#qnorm(.90,  fhgtmean, fhgtsd)
#[1] 173.2596
# This gives me the woman height that is estimated to be the 90th percentile given a normal distribution and the inputed second and third arguments: mean, sd.
# 247/260 = 0.95
# The proportion of women in the data that are below this threshold is 0.95(95%)
# This value does not match the expected percentile, because there is a difference between percentile and percentage
# The proportion value What I calculated (95%) is percentage. The percentage is a ratio expressed as a fraction of 100.
# On the other hand, A percentile is a measure used in statistics indicating the value below which a given percentage of observations in a group of observations fall.
