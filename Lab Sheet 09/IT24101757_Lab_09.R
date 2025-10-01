setwd("C:\\Users\\User\\OneDrive\\Desktop\\SLIIT Modules\\PS")
getwd()

#01

#(i)
#Generated sample
baking_time <- rnorm(25, mean = 45, sd = 2)
print(baking_time)

#(ii)
# State the hypothesis
# Null Hypothesis (H0): The true average baking time is 46 minutes or more. (μ >= 46)
# Alternative Hypothesis (H1): The true average baking time is less than 46 minutes. (μ < 46)
# Set the significance level
# [cite_start]Alpha (α) = 0.05 [cite: 86]
# Perform the test using the t.test() command.
test_result <- t.test(baking_time, mu = 46, alternative = "less")
print(test_result)
# Draw the conclusion based on the p-value.
# The conclusion depends on the randomly generated sample. A sample conclusion is written below.
