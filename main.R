setwd("/Users/Antoine/git/workshops.for.ukraine")

# Load the required libraries
library(tidyverse)
library(zoo)

iris <- iris[-3]
head(iris)
summary(iris)
table(iris$Species)

source("/Users/Antoine/git/workshops.for.ukraine/viz-scripts/plots.R")

pairs(iris[1:4], main="Iris Data", pch=19, col=iris$Species)

predict_iris<-function(iris){set.seed(123)
  indices<-sample(1:50,25)
  train_data <- iris[indices, ]
  test_data <- iris[-indices, ]
  model <- glm(Species~.,data=train_data, family="binomial")
  predict(model, test_data, type="response")
}

predict_iris(iris)
