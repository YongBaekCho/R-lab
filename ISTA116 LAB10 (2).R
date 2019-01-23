# Name: YongBaek, Cho
# Date: November 5, 2017
# ISTA 116
# Lab Assignment 10


#1
# sample(ames$Gr.Liv.Area, size = 60)
# mean(sam)
# [1] 1442.667

#2
# sd(sam)
# [1] 438.6872
# standard error = 469.5362/the sqaure root(60) = 60.61686

# a <- 1442.667
# s <- 438.6872
# n <- 60
# error <- s/sqrt(n) = 60.61686


#3


# same as
# a - error 
# [1] 1382.05
# a + error
# [1] 1503.284

# lower <- a - error
# upper <- a + error
# c(lower, upper)
# [1] 1382.050 1503.284


#4
#mean(ames$Gr.Liv.Area)
#[1] 1499.69
# yes, it does fall within the confidence interval.
# The condfidence interval indicaates that I can be 95% confident that the mean for the entire population fllas within this range.
# As I increase the sample size, the sampling error decreases and the intervals become narrower.
#I know that the mean is likely to fall within the range, but the 95% confidence interval does not predict that 95% of future observations will fall within the range.

#5
# replicate(1, sam - error1)
# replicate(1, sam + error1)
# sam1 = replicate(1, sam- error1)
# mat1 = matrix(sam1)
# sam2 = replicate(1, sam + error1)
# mat2 = matrix(sam2)
# cbind(mat1, mat2)
# gg <- cbind(mat1, mat2)
# dim(gg)
# [1] 50  2

#6
#lower.bounds <- gg[1,]
#upper.bounds <- gg[2,]

#7
#plot_ci(lower.bounds,upper.bounds, 1499.69)
#Out of the 50 confidence intervals, 45 include the mean, for a proportion of 90%.
#The proportion is not exactly equal to the confidence level because the confidence level only says how confident I can be about it falling within the confidence intervals.

#8
# 99% of values should fall within 3 standard deviations.(1.65)

#9
#Repeat the process from steps 5-7 to plot your new confidence intervals.

#10
#Out of the 50 confidence intervals, 45 include the mean, for a proportion of 90%.
#The proportion is not exactly equal to the confidence level because the confidence level only says how confident I can be about it falling within the confidence intervals.
