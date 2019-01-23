# Name: YongBaek, Cho
# Date: September 24 , 2017
# ISTA 116
# Lab Assignment 4

data("heartTr")

#1
boxPlot(heartTr$survtime, heartTr$transplant,
        ylab = 'Survival Time (days)')
# there are 8 outliers 

#2
boxPlot(log(heartTr$survtime), heartTr$transplant,
        ylab = 'Survival Time (days)')
# There are only 1 outlier

#3
# It changed to a log-transformation, so the value of the column has changed.
# boxplot which is a log-transformation of survtime looks better.
# because it seems more simpler than first boxplot and there is only one outlier in this box plot

#4
table(heartTr$survived, heartTr$transplant)

#       control treatment
#alive       4        24
#dead       30        45

# 4 participants in the control survived.

#5
prop.table(table(heartTr$survived, heartTr$transplant))
#        control  treatment
#alive 0.03883495 0.23300971
#dead  0.29126214 0.43689320

#treatment patients were more likely to survive.
#the proportion of control is 0.03883495, but the proportion of treatment is 0.23300971

#6
prop.table(table(heartTr$transplant, heartTr$survived))
#        control  treatment
#alive 0.03883495 0.23300971
#dead  0.29126214 0.43689320

# This contingency shows the proportion of heartTr data.
# According to this contingency table, 3.8% of control patients survived and 23.3% of treatment patients also survived.
# On the other side, 29.13% of control patients are dead and 43.69% of treatment patients are dead.
# The previous step shows the just number of patients, but this prop.table function shows their probaility. 

#7
#counts <- table(heartTr$survived, heartTr$age)
#barplot(counts, main="relationship between the years of the study and survived",xlab="the years of the study",ylab = "dead or alive patients",col=c("darkblue","red"))

#At the 47 years of the study, it shows the highest frequency of dead or alive patients.
#Also, it shows the biggest gap at this year. Overall, it has a simialr figure between 8 to 38. 
#Most of the patients were focused around the 47 to 53 area and the shape is unimodal, right skewed
#As the years of the study gets increase, the patients have less chance of survival.

#8
#help(barplot)


#9 
# counts <- prop.table(table(heartTr$transplant, heartTr$age))
# barplot(counts, main="relationship between the years of the study and patients",xlab="the years of the study",ylab = "proportion of patients",col=c("darkblue","red"), legend = rownames(counts))
# Most of the participants were focused around the 47 to 53 area and the shape is unimodal, right skewed
# It shows the portion of patients who receive treatment is more than the portion of control group.
# The treatment patients has the highest point at the 47 years of the study and also the contorl patients has the highest point at the 47.


#10
#mosaicplot(~ age + transplant, data = heartTr)
#It shows a graphical display of heartTr contingency table information that is similar to a bar plot.
#Also, it uses box areas to represent the number of observations.
#I can see the variation of the value in this plot that I could not see in the barplot.



