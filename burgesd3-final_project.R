#load packages
library(readr)
data<-read.csv("data.csv")
dim(data)
names(data)
summary(data)
sd(data$episodes)
mean(data$episodes)
min(data$episodes)
max(data$episodes)
table(data$age)
#linear regression 
linear_model<-lm(episodes~as.factor(age), data=data)
summary(linear_model)

# Box plot
boxplot(episodes~as.factor(age), data=data)
