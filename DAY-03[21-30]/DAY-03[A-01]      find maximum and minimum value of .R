nums <- c(10, 20, 30, 40, 50, 60)

max_value <- nums[1]
min_value <- nums[1]

for (num in nums) {
  if (num > max_value) {
    max_value <- num
  }
  if (num < min_value) {
    min_value <- num
  }
}

cat("Maximum value:", max_value, "\n")
cat("Minimum value:", min_value, "\n")

seq_numbers <- seq(20, 50)

mean_20_to_60 <- mean(seq(20, 60))

sum_51_to_91 <- sum(seq(51, 91))

cat("Mean of numbers from 20 to 60:", mean_20_to_60, "\n")
cat("Sum of numbers from 51 to 91:", sum_51_to_91, "\n")
