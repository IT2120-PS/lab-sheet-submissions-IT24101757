setwd("C:\\Users\\User\\OneDrive\\Desktop\\SLIIT Modules\\PS\\Lab 05-20250828")
getwd()

#01
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
fix(Delivery_Times)

attach(Delivery_Times)

names(Delivery_Times) <- c("A1")

attach(Delivery_Times)

#02
histogram <- hist(A1, main = "Histogram for Delivery Times", breaks = seq(20 , 70, length = 10), right = FALSE)

#03
#Symmetric - Bell-shaped
#Spread - Delivery times range from about 20 to 70 mins.
#Tails: Both tails taper off fairly evenly on the left and right sides.
#Uniform - All bars almost equal

#04
breaks <- round(histogram$breaks)
freq <- histogram$counts

cum.freq <- cumsum(freq)

new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }
  else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = 'o', main = "Cumalative Frequency Polygon for Delivery Times", xlab = "Delivery Time", ylab = "Cumalative Frequency", ylim = c(0,max(cum.freq)))

