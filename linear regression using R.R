##DATA SCIENCE AND BUISNESS ANALYTICS INTERN AT THE SPARKS FOUDNATION##

##AUTHOR: SWATI RAWAT##

##TASK 1: Prediction using Supervised ML##

##PROBLEM: Predict the percentage of an student based on the number of study hours.##

#Read the data given using read.table() function and assign it to tha variable "w" #

w<-read.table("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv",sep = ",",header = T)

#Now we will view the data#
w

#Assigning variables to the required data so that we can easily access the data in future# 

h<-w$Hours
s<-w$Scores

#Now we will create a linear model#

lr<-lm(formula = s~h)
lr

#Plotting the two variables and display linear regression#

plot(h,s,main="Hours vs Scores",ylab="Scores",xlab = "Hours")
abline(lr)

#Comparing actual versus predicted values#

Actual<-w$Scores
newHours<-data.frame(h)
Predicted<-predict(lr,newHours)
cbind(Actual,Predicted)

#What will be the predicted score if a student studies for 9.25hrs per day?#

test<-data.frame(h=9.25)
predict(lr,test)

#Installing the "Metrics" package#

install.packages("Metrics")
library(Metrics)

#Evaluating the model - Mean Absolute Error#

mae(Actual,Predicted)

