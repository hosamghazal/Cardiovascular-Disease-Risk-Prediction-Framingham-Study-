framingham= read.csv("Framingham.csv")
str(framingham)
library(caTools)
set.seed(144)
split= sample.split(framingham$TenYearCHD, SplitRatio = 0.7)
train=subset(framingham, split == TRUE)
test=subset(framingham, split== FALSE)
str(train)
str(test)
#question 3 logistic regression
model1= glm(TenYearCHD ~ . , data= train, family = binomial)
summary(model1)
#question 4 confusion matrix 
pred= predict(model1, type = "response")
table(train$TenYearCHD, pred > 0.7)
#QUESTION 10 
model2= glm(TenYearCHD ~ male + age+ cigsPerDay+ sysBP+ glucose, data = train, family = binomial)
summary(model2)
pred2= predict(model2, type = "response")
table(train$TenYearCHD, pred2> 0.7)
#q 13
library(ROCR)
ROCRpred = prediction(pred2, train$TenYearCHD)
ROCRperf= performance(ROCRpred, "tpr", "fpr")
plot(ROCRperf, colorize=TRUE, print.cutoffs.at=seq(0,1, by=0.1),text.adj=c(-0.5,0.5))







































































