setwd("C:\\Users\\it24103980\\Desktop\\IT24103980")

DeliveryTimes <- read.table("Exercise - Lab 05.txt", header = TRUE)

breaks <- seq(20, 70, length.out = 10)

hist(
  
  DeliveryTimes$Delivery_Time_.minutes., 
  breaks = breaks,
  right = FALSE, 
  main = "Histogram of Delivery Times",
  xlab = "Delivery Time (minutes)",
  ylab = "Frequency"
  
)

summary(DeliveryTimes$Delivery_Time_.minutes.)
mean(DeliveryTimes$Delivery_Time_.minutes.)
median(DeliveryTimes$Delivery_Time_.minutes.)
#The distribution of delivery times is approximately symmetric,
#but with a slight positive skew (a longer right tail).

# Create frequency table using same breaks
freq_table <- hist(DeliveryTimes$Delivery_Time_.minutes., 
                   breaks = breaks, 
                   right = FALSE, 
                   plot = FALSE)

# Cumulative frequency
cum_freq <- cumsum(freq_table$counts)

# Plot o give
plot(freq_table$breaks[-1], cum_freq, 
     type = "o", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency", 
     main = "Cumulative Frequency Polygon")
