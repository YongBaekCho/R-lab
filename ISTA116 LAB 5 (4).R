# Name: YongBaek, Cho
# Date: October 1 , 2017
# ISTA 116
# Lab Assignment 5

# download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
# load("kobe.RData")


#1 
# table(kobe$basket)
# ouput 

# H  M 
# 58 75

#prop.table(table(kobe$basket))
#output

#        H         M 
# 0.4360902 0.5639098 

#2 
#kobe.basket.prob <- prop.table(table(kobe$basket))
#kobe.basket.prob[1]

#output

#        H 
# 0.4360902 

#3

# kobe$basket[1:13]
#  [1] "H" "M" "M" "H" "H" "M" "M" "M" "M" "H" "H" "H" "M"

#kobe_streak <- calc_streak(kobe$basket[1:13])

#calc_streak is a custom function that I can use to calculate streak lengths of shots.
# It calculates the lengths of each shooting streak, so we can look at the distribution.

#4
#kobe_streak <- calc_streak(kobe$basket)

#barplot(table(kobe_streak))


#5
#outcomes = c("H", "M")

#sample(outcomes, size=133, replace=T, prob=c(0.44, 0.56))

#output

#   [1] "H" "H" "M" "H" "M" "M" "M" "M" "M" "M" "H" "H" "M" "M" "H" "H" "M" "H" "H"
#[20] "H" "H" "M" "M" "H" "M" "M" "H" "H" "H" "M" "H" "M" "M" "H" "H" "H" "H" "M"
#[39] "M" "H" "H" "H" "M" "M" "M" "M" "M" "H" "H" "M" "H" "H" "M" "H" "H" "M" "H"
#[58] "M" "H" "M" "M" "M" "M" "H" "H" "H" "H" "M" "M" "M" "M" "M" "M" "H" "H" "H"
#[77] "M" "H" "M" "H" "H" "M" "H" "H" "M" "M" "H" "H" "H" "H" "H" "M" "M" "H" "M"
#[96] "H" "M" "M" "H" "H" "M" "M" "H" "H" "H" "H" "H" "M" "H" "H" "H" "M" "M" "H"
#[115] "H" "M" "M" "M" "H" "M" "H" "H" "H" "M" "H" "M" "H" "M" "M" "H" "H" "M" "M"

#6
# sim_basket = sample(outcomes, size=133, replace=T, prob=c(0.44, 0.56))
# prop.table(table(sim_basket))

#output

#        H        M 
# 0.406015 0.593985

# The distribution is different from step 1, beacuse I have taken a new random sample of possible outcomes.

#7
#sim_streak = calc_streak(sim_basket)
#sim_table = table(sim_streak)
#barplot(sim_table)

# I think it would be similar, beacaue the simulation has a large sample size.
# Also, this depends on how the simulation is run.

#8
#calc_streak(kobe$basket)
#output
# [1] 1 0 2 0 0 0 3 2 0 3 0 1 3 0 0 0 0 0 1 1 0 4 1 0 1 0 1 0 1 2 0 1 2 1 0 0 1 0
# [39] 0 0 1 1 0 1 0 2 0 0 0 3 0 1 0 1 2 1 0 1 0 0 1 3 3 1 1 0 0 0 0 0 1 1 0 0 0 1


#calc_streak(sim_basket)
#output
#  [1] 0 0 3 0 0 0 2 1 1 1 0 0 1 0 0 2 1 0 2 0 0 2 0 1 2 0 0 0 0 2 2 0 1 3 2 1 0 2
#[39] 1 0 0 0 0 0 1 0 0 2 3 1 0 1 1 0 0 0 0 0 0 2 0 0 0 1 1 1 0 2 1 2 1 1 0 0 0 0
#[77] 0 0 0 0


#kobe_streak = calc_streak(kobe$basket)
#sim_streak = calc_streak(sim_basket)

# It is different. They do not have similar probability distribution.
# Kobe's probability distributions are 0.44 of H and 0.56 of M
# On the other hand, my sample probability of distributions are 0.41 of H and 0.59 of M.

#9
#  replicate(100, sample(kobe_streak, length(0), size = 1))

# output

# [1] 0 1 2 0 0 1 1 0 4 0 1 0 0 1 0 0 0 2 1 0 0 0 2 0 0 0 0 1 1 1 0 0 0 0 3 3 1 1
#[39] 0 4 0 1 0 0 0 2 1 0 1 0 0 1 0 0 1 3 0 1 1 1 0 1 1 1 0 0 0 0 1 1 0 2 0 0 1 0
#[77] 0 0 0 1 0 2 2 0 1 0 2 0 0 1 1 0 0 1 0 1 2 0 0 1

#  shots <- replicate(100, sample(kobe_streak, length(0), size = 1))

#summary(shots)

#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#    0.00    0.00    0.50    0.79    1.00    4.00 

# Yes, Kobe's probability length 0 streak is typical. His most typical streak length is 0, based on median, and variability in streak length is 1.

#10
#replicate(100, sample(kobe_streak, length(3), size = 1))
#output

#   [1] 1 1 0 1 1 0 0 0 0 0 1 0 1 0 1 1 0 2 1 1 1 0 0 1 0 1 2 0 1 1 2 0 0 1 2 0 0 1
# [39] 0 0 0 0 1 0 4 2 0 0 1 1 2 0 0 0 0 3 1 0 0 2 0 1 1 0 0 0 1 1 1 0 4 0 3 1 2 1
# [77] 1 1 1 1 0 0 1 0 1 3 0 0 1 3 0 1 1 0 0 2 2 0 0 0

# goodshots <- replicate(100, sample(kobe_streak, length(3), size = 1))
# summary(goodshots)

# output

#   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#   0.00    0.00    1.00    0.92    1.00    4.00 

# Yes, I think it is typical, because the most typical streak is 0 and this meadian is 1.0
# Kobe seems to be more likely to get a streak of successful shots as compared to a simulated player. 
# Kobe's shots are all independent from each other.