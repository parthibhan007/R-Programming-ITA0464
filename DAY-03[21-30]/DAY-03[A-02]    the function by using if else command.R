f <- function(x) {
  if (x < 0.5) {
    return(x)
  } else if (x >= 0.5 & x <= 1) {
    return(1 - x)
  } else {
    return(0)
  }
}

print(f(0.3))  
print(f(0.7))  
print(f(1.5))  
sum_mean <- function(nums) {
  total_sum <- sum(nums)
  avg_mean <- mean(nums)
  return(list(Sum = total_sum, Mean = avg_mean))
}

nums <- c(1, 2, 3, 4, 5)
result <- sum_mean(nums)
print(result$Sum)   
print(result$Mean)  