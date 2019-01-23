# Name: YongBaek, Cho
# Date: October 29 , 2017
# ISTA 116
# Lab Assignment 9


#1
# area <- ames$Gr.Liv.Area
# mean(area)
# [1] 1499.69

#2
#ames.gr.liv.area.sample <- sample(area, 50)
#mean(ames.gr.liv.area.sample)
#[1] 1475.14

#Depending on which 50 I selected, my estimate could be a bit below or a bit above the population mean 1499.69.
#Sample mean is useful to get a sense of how much variability I should expect when estimating the poplulation mean.
#The distribution of sample means, which is the sampling distribution, can help understand variability.

#3
#par(mfrow = c(2,1))
#area.xlim = range(area)

#4
#hist(ames$Gr.Liv.Area, xlim = c(334, 5642))
# abline(v = mean(area), col = 'red' , lwd = 2)

#5
#hist(ames.gr.liv.area.sample, xlim = c(334, 5642))
#abline(v = mean(ames.gr.liv.area.sample), col = 'red' , lwd = 2)
#They have a different red vertical line, it means they have different mean.
#Also, my estimate could be a bit above or below the entire population mean. 
# The distribution of sample means(sampling distribution) can help to understand the variability.

#6
#s = sample(area, size = 10)
#replicate(5000, {s = sample(area, size = 10)})
#samp <- replicate(5000, {s = sample(area, size = 10)})
#mean(samp)
#[1] 1500.207


#7
#area.means.10. <- replicate(5000, {s = sample(area, size = 10)})
#hist(area.means.10.)
#This histogram is left skewed. 

#8
#area.means.50. <- replicate(5000, {s = sample(area, size = 50)})
#area.means.100. <- replicate(5000, {s = sample(area, size = 100)})

#9
#par(mfrow = c(3,1))
#area.means.10.xlim <- range(area.means.10.)
#range(area.means.10.)
#output
#[1]  334 5642

#10
#hist(area.means.10., breaks = 20, xlim = c(334, 5642))
#hist(area.means.50., breaks = 20, xlim = c(334, 5642))
#hist(area.means.100., breaks = 20, xlim = c(334, 5642))

#If I wanted to estimate a mean, I had to choose a sample size of 100.
#When the sample size is larger, the center becomes higher or more frequent and the spread narrows.
#The small spread is obtained with the larger sample size(100). Therefore, the sample distribution with sample size 100 has a samller spread.
#Also, a smaller spread is preferred when I were seeking accuracy of mean estimate.

#11
#area.means.1. <- replicate(5000, {s = sample(area, size = 1)})
#hist(area.means.1., breaks = 20, xlim = c(334, 5642))
#mean(area.means.1.)
#[1] 1493.384

#area.means.2930. <- replicate(5000, {s = sample(area, size = 2930)})
#hist(area.means.1., breaks = 20, xlim = c(334, 5642))
#mean(area.means.2930.)
#[1] 1499.69

#They have different frequency and means. The sample of size 2930 has 1499.69 mean. It is exactly same as the popluation mean(1499.69)
#As the sample sizes get larger, to 1 and 2930, the shape of the histogram is looking like the whole population.
#Lager samples provide better estimate of the population mean, but it is not a gurantee that every large sample will provide a better estimate than particular samll sample.

