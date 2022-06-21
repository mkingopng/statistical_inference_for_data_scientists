survey <- read.csv('/course/data/survey.csv', header=TRUE)
tab <- table(survey$gender, survey$study.area)