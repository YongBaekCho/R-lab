# Name: YongBaek, Cho
# Date: October 8 , 2017
# ISTA 116
# Lab Assignment 6


#1

# c("Spade", "Heart", "Diamond", "Club")
# [1] "Spade"   "Heart"   "Diamond" "Club" 

# deck  <- c("Spade", "Heart", "Diamond", "Club")
# c("Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King")
#  [1] "Ace"   "2"     "3"     "4"     "5"     "6"     "7"     "8"     "9"    
# [10] "10"    "Jack"  "Queen" "King"

# ranks <-  c("Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King")

#2 
#mydata = expand.grid(deck=deck, ranks=ranks)

#     Var1  Var2
#1    Spade   Ace
#2    Heart   Ace
#3  Diamond   Ace
#4     Club   Ace
#5    Spade     2
#6    Heart     2
#7  Diamond     2
#8     Club     2
#9    Spade     3
#10   Heart     3
#11 Diamond     3
#12    Club     3
#13   Spade     4
#14   Heart     4
#15 Diamond     4
#16    Club     4
#17   Spade     5
#18   Heart     5
#19 Diamond     5
#20    Club     5
#21   Spade     6
#22   Heart     6
#23 Diamond     6
#24    Club     6
#25   Spade     7
#26   Heart     7
#27 Diamond     7
#28    Club     7
#29   Spade     8
#30   Heart     8
#31 Diamond     8
#32    Club     8
#33   Spade     9
#34   Heart     9
#35 Diamond     9
#36    Club     9
#37   Spade    10
#38   Heart    10
#39 Diamond    10
#40    Club    10
#41   Spade  Jack
#42   Heart  Jack
#43 Diamond  Jack
#44    Club  Jack
#45   Spade Queen
#46   Heart Queen
#47 Diamond Queen
#48    Club Queen
#49   Spade  King
#50   Heart  King
#51 Diamond  King
#52    Club  King

#3
#table(mydata)

#output

#        ranks
#deck      Ace 2 3 4 5 6 7 8 9 10 Jack Queen King
#Spade     1 1 1 1 1 1 1 1 1  1    1     1    1
#Heart     1 1 1 1 1 1 1 1 1  1    1     1    1
#Diamond   1 1 1 1 1 1 1 1 1  1    1     1    1
#Club      1 1 1 1 1 1 1 1 1  1    1     1    1


# prop.table(table(mydata))

#output

# deck             Ace          2          3          4          5          6
# Spade   0.01923077 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077
# Heart   0.01923077 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077
# Diamond 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077
# Club    0.01923077 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077
# ranks
# deck               7          8          9         10       Jack      Queen
# Spade   0.01923077 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077
# Heart   0.01923077 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077
# Diamond 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077
# Club    0.01923077 0.01923077 0.01923077 0.01923077 0.01923077 0.01923077
# ranks
# deck            King
# Spade   0.01923077
# Heart   0.01923077
# Diamond 0.01923077
# Club    0.01923077

# the probability of drawing a Spade = 0.25000001
# the probaility of drawing a Ace = 0.07692308
# the probability of drawing the Ace of Spades = 0.01923077

#4
# data2 = df[sample(nrow(mydata), 10)]
# table(data2)

# deck      Ace 2 3 4 5 6 7 8 9 10 Jack Queen King
#Spade     0 0 1 0 0 0 0 1 0  0    0     0    0
#Heart     1 0 0 0 0 0 0 0 0  0    1     0    0
#Diamond   0 0 0 1 0 0 0 0 0  0    0     0    0
#Club      0 0 0 1 1 1 0 1 1  0    0     0    0        


#5
# table(data2)
# simdata <- table(data2)

# table(mydata)
# sdata1 <- table(mydata)

# sdata1 - simdata

# prop.table(change)

# output
#          ranks
# deck            Ace          2          3          4          5          6
# Spade   0.02380952 0.02380952 0.00000000 0.02380952 0.02380952 0.02380952
# Heart   0.00000000 0.02380952 0.02380952 0.02380952 0.02380952 0.02380952
# Diamond 0.02380952 0.02380952 0.02380952 0.00000000 0.02380952 0.02380952
# Club    0.02380952 0.02380952 0.02380952 0.00000000 0.00000000 0.00000000
# ranks
# deck               7          8          9         10       Jack      Queen
# Spade   0.02380952 0.00000000 0.02380952 0.02380952 0.02380952 0.02380952
# Heart   0.02380952 0.02380952 0.02380952 0.02380952 0.00000000 0.02380952
# Diamond 0.02380952 0.02380952 0.02380952 0.02380952 0.02380952 0.02380952
# Club    0.02380952 0.00000000 0.00000000 0.02380952 0.02380952 0.02380952
# ranks
# deck          King
# Spade   0.02380952
# Heart   0.02380952
# Diamond 0.02380952
# Club    0.02380952

# the probability of drawing a spade : 0.26190472
# the probability of drawing an Ace : 0.07142856
# the probability of drawing the ace of spades : 0.02380952

# No, it is different. Step 3 obtains the probability of a all number of cases.
# On the other hand, Step 5 was extracted the sample from the population.
# Therefore, the probabilities of the samples were calculated only.
# There shows the probabilities only 10 samples, so it shows different probabilites. 

#6 
# datest <- expand.grid(1:6,1:6,1:6)
# expand.grid(1:6,1:6,1:6)

#expand.grid(1:6,1:6,1:6)
# I could see 6^3 = 216 rows in this data frame.

#7
#datest$sum <- datest$Var1 + datest$Var2 + datest$Var3

# output

#[1]  3  4  5  6  7  8  4  5  6  7  8  9  5  6  7  8  9
#[18] 10  6  7  8  9 10 11  7  8  9 10 11 12  8  9 10 11
#[35] 12 13  4  5  6  7  8  9  5  6  7  8  9 10  6  7  8
#[52]  9 10 11  7  8  9 10 11 12  8  9 10 11 12 13  9 10
#[69] 11 12 13 14  5  6  7  8  9 10  6  7  8  9 10 11  7
#[86]  8  9 10 11 12  8  9 10 11 12 13  9 10 11 12 13 14
#[103] 10 11 12 13 14 15  6  7  8  9 10 11  7  8  9 10 11
#[120] 12  8  9 10 11 12 13  9 10 11 12 13 14 10 11 12 13
#[137] 14 15 11 12 13 14 15 16  7  8  9 10 11 12  8  9 10
#[154] 11 12 13  9 10 11 12 13 14 10 11 12 13 14 15 11 12
#[171] 13 14 15 16 12 13 14 15 16 17  8  9 10 11 12 13  9
#[188] 10 11 12 13 14 10 11 12 13 14 15 11 12 13 14 15 16
#[205] 12 13 14 15 16 17 13 14 15 16 17 18

#8
#table(datest$sum)

#output 
#3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 
#1  3  6 10 15 21 25 27 27 25 21 15 10  6  3  1 

#prop.table(table(datest$sum))

#output
#          3          4          5          6          7 
#0.00462963 0.01388889 0.02777778 0.04629630 0.06944444 
#          8          9         10         11         12 
#0.09722222 0.11574074 0.12500000 0.12500000 0.11574074 
#         13         14         15         16         17 
#0.09722222 0.06944444 0.04629630 0.02777778 0.01388889 
#         18 
#0.00462963 

#barplot(prop.table(table(datest$sum)))

# Sum of 10 and 11 are the most likely 2 outcomes when I roll 3 dice.

#9

#my.dice.sum <- function(n.dice, n.sides){
#  +     dice <- sample(1:n.sides, size = n.dice, replace = TRUE)
#  +     return(sum(dice))
#  + }

# replicate(1000, my.dice.sum(3,6))

#prop.table(table(sim_date))
#     3     4     5     6     7     8     9    10    11    12    13    14 
# 0.004 0.017 0.039 0.038 0.090 0.087 0.114 0.144 0.117 0.113 0.095 0.047 
# 15    16    17    18 
# 0.042 0.032 0.018 0.003

#plot(prop.table(table(somedata)), xlab = 'Sum', ylab = 'Frequency', main = '1000 Rolls of 3 Dice')

# There were 216 cases in step 8, but I should rolled 1000times and the number of cases grew to 1000 cases.
# so, each barpolts has changes as well. Each barplot looks really similar However, the sum is 10 and 11 are the most likely 2 outcomes when rolled 3 dices in step 8.
# The sum is 10 and 12 are the most likely 2 outcomes when I rolled 3 dices 1000 times. 

#10
#replicate(1000, my.dice.sum(5,6))

#rolldata <- replicate(1000, my.dice.sum(5,6))

#rolldata1 <- prop.table(table(rolldata)) 

#sort(rolldata1, decreasing = FALSE)
#rolldata1[order(rolldata1)] #I found that these two functions are same and produce same output.

#output

#    7    29     8    28    27    26     9    25    10    11 
#0.001 0.002 0.003 0.003 0.004 0.005 0.012 0.012 0.014 0.025 
#24    12    23    21    13    22    14    16    20    19 
#0.026 0.034 0.040 0.045 0.052 0.059 0.068 0.088 0.088 0.103 
#17    15    18 
#0.104 0.105 0.107 

#barplot(prop.table(rolldata1))

# The scale of the x-axis has changed. The barplot of Step 8 and 9 have the scale that 3(minimum) to 8(maximum).
# In step 8 and 9, they calculated the probability of having three dice, but in step 10, they calculated the probability of having five dice rolled.
# Also, the frequency has changed. 
# Then, in step 8 and 9, the mode is 10(actually in step 8 the mode are 10, 11), but in step 10, the mode is 19.
# These 3 barplots are approximately normal distribution, but they have different means
# mean(somedata) - step 8  => 10.572
# mean(rolldata) - step 9 => 17.451
# mean(datest$sum) - step 10 => 10.5