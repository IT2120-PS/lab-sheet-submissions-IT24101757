#Exercise
setwd("C:\\Users\\User\\OneDrive\\Desktop\\SLIIT Modules\\PS")
getwd()

#1
#Null Hypothesis (H0): The proportions of customers choosing each of the four snack types are equal.
#H0: pA = pB = pC = pD = 0.25
#Alternative Hypothesis (H1): At least one of the proportions is different; the proportions of customers choosing the four snack types are not all equal.

#2
observed_counts <- c(120, 95, 85, 100)
chi_test_result <- chisq.test(observed_counts)
print(chi_test_result)

#3
#To draw a conclusion, we compare the p-value from our test to a chosen significance level (alpha). 
#A common significance level is Alpha = 0.05.