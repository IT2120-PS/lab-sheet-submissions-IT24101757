setwd("C:\\Users\\User\\OneDrive\\Desktop\\SLIIT Modules\\PS")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#Q1
pop_mean <- mean(data$Weight.kg.)
pop_sd <- sd(data$Weight.kg.)


#Q2
sample_means <- c()
sample_sds <- c()

for (i in 1:25) {
  sample_data <- sample(data$Weight.kg., size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}

#Q3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)


