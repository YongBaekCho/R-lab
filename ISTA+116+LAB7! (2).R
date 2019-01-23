# Name: YongBaek, Cho
# Date: October 15 , 2017
# ISTA 116
# Lab Assignment 7

#1

#expand.grid(1:6)
#datest <- expand.grid(1:6)
#prop.table(table(datest))

#output
#1         2         3         4         5         6 
#0.1666667 0.1666667 0.1666667 0.1666667 0.1666667 0.1666667

#cbind(prop.table(table(datest)))

#da <- c(100, 0, 0, 0, 50, 0)
#cbind(da)
#datest$points <- cbind(da)

#2
#sample(datest$points, size = 10000, replace = TRUE)
#hist(sample(datest$points, size = 10000, replace = TRUE))
#sample(datest$points, size = 10000, replace = TRUE) ->y
#table(y)

#output
#   0   50  100 
# 6656 1720 1624

# There are three possible scores in this case. 100, 50, 0
# 100 score happend 1624 times, 50 score happened 1720 times, 0 score happened 6656 times.

#3
# mean(y)
# output
# [1] 24.84
# 0*0.6656 + 50 * 0.1720 + 100 * 0.1624 = 0 + 8.6 + 16.24 = 24.84

# No, they are smae value as 24.84

#4
#sd(y)
#[1] 37.90934
# (-24.84 * -24.84) , (25.16 * 25.16), (75.16 * 75.16)
# 617.0256, 633.0256, 5649.0256
# 617.0256 * 0.6656 = 410.69223936 , 633.0256 * 0.1720 = 108.8804032, 5649.0256 * 0.1624 = 917.40175744
# the variance = 1436.9744
# standard deviation = 37.9074

#5
#datest2 <- expand.grid(1:6)
#pro <-  c(0.1,0.1,0.1,0.1,0.5,0.1)
#datest2$prop <- cbind(pro)
#datest2$points <- cbind(da)

#6
#sample(datest2$points, size = 10000, replace = TRUE)
#hist(sample(datest2$points, size = 10000, replace = TRUE))
#sample(datest2$points, size = 10000, replace = TRUE) -> op
#table(op)

#output
#   0   50  100 
#6664 1620 1716

#possible scores: 0 50 100
# 0 : 6664 times, 50 : 1620 times, 100 : 1716 times

#7

#mean(op)
#[1] 25.26
# expeccted value : 25.26

# I can expect 4200 more value of score. (25.26 - 24.84 = 0.42)

#8

#datest3 <- expand.grid(1:6,1:6)
#dat <- c(200,100,100,100,150,100,100,0,0,0,50,0,100,0,0,0,50,0,100,0,0,0,50,0,150,50,50,50,100,50,100,0,0,0,50,0)
#datest3$points <- cbind(dat)
# sample(datest3$points, size = 10000, replace = TRUE)
# sample(datest3$points, size = 10000, replace = TRUE) -> z
# table(z)

#output
#   0   50  100  150  200 
#4480 2202 2507  560  251

#barplot(table(z))

#There is defference between step2,6 and step 8, because the probability that the sum of the points changed.
#Step2, 6 have changed have only 0,50,100 but this step has 0,50 ,100,150,200 scores.

#9
#mean(z)
#output
#[1] 49.5
# expected value : 0 * 0.4480 + 50 * 0.2202 + 100 * 0.2507 + 150 * 0.0560 + 200 * 0.0251 = 49.5
# It is so much higher than the previous games, because of the central limit theory
# As sample sized increase, the sampling distributions approach a normal distribution.
# AS sample sized increase, the mean will increase. 

#10


