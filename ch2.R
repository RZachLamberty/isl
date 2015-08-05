## ISLR
##   Summer 2015
##   R learning group

## Chapter 2 -- Applied exercises

## 8 -------------------------------------------------------------------

## 8.a
college <- read.csv('./data/College.csv')

## 8.b
fix(college)
### exit
rownames(college) <- college[, 1]
fix(college)
### exit

## 8.c
### 8.c.i
summary(college)

### 8.c.ii
pairs(college[,1:10])

### 8.c.iii
attach(college)
plot(Private, Outstate)

### 8.c.iv
Elite = rep("No", nrow(college))
Elite[college$Top10perc > 50] = "Yes"
Elite = as.factor(Elite)
college = data.frame(college, Elite)
summary(college$Elite)
plot(Elite, Outstate)

### 8.c.v
par(mfrow=c(2, 2))
hist(Apps)
hist(Accept)
hist(Outstate)
hist(PhD)

### 8.c.vi
#### nah

## 9 -------------------------------------------------------------------

### 9.a
auto = read.csv('data/Auto.csv', header=T, na.strings="?")
auto = na.omit(auto)
summary(auto)
head(auto)
dim(auto)

### 9.b
sapply(auto[, 1:7], range)

### 9.c
sapply(auto[, 1:7], mean)

### 9.d
auto2 = auto[-10:85,]
sapply(auto[, 1:7], range)
sapply(auto[, 1:7], mean)
sapply(auto[, 1:7], sd)

### 9.e
pairs(auto)

### 9.f
### strong correlation with displacement, horsepower, and weight (seen in scatterplots)

## 10 ------------------------------------------------------------------

### 10.a
library(MASS)
?Boston
dim(Boston)
### rows are individual housing value measurements; columns are
names(Boston)

### 10.b
pairs(Boston)

### 10.c
attach(Boston)
plot(age, crim)
plot(dis, crim)
plot(rad, crim) 
plot(tax, crim)

### 10.d
sapply(Boston, range)
### high crime rates
hist(Boston$crim[Boston$crim > 1], breaks=25)
### high tax rates
hist(Boston$tax, breaks=25)
### high ptratio
hist(Boston$ptratio, breaks=25)

### 10.e
dim(Boston[Boston$chas == 1, ])

### 10.f
median(Boston$ptratio)

### 10.g
Boston[Boston$medv == min(Boston$medv), ]
sapply(Boston, range)
### they are within the range for most things *except* blackness,
### where it is at the maximum

### 10.h
dim(Boston[Boston$rm > 7, ])
dim(Boston[Boston$rm > 8, ])
sapply(Boston[Boston$rm > 8, ], range)
sapply(Boston, range)
### again, these features correspond to regions with large "black" values.
