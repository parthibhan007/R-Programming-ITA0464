fibonacci <- function(n) {
  fib_numbers <- numeric(n)
  fib_numbers[1:2] <- c(0, 1)
  
  for (i in 3:n) {
    fib_numbers[i] <- fib_numbers[i - 1] + fib_numbers[i - 2]
  }
  
  return(fib_numbers)
}
first_10_fibonacci <- fibonacci(10)
print(first_10_fibonacci)
