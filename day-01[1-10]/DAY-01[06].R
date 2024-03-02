is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  for (i in 2:(n-1)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

get_primes_up_to_limit <- function(limit) {
  primes <- c()
  for (num in 2:limit) {
    if (is_prime(num)) {
      primes <- c(primes, num)
    }
  }
  return(primes)
}
limit <- 50
prime_numbers <- get_primes_up_to_limit(limit)
print(prime_numbers)
