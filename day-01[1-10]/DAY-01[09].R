find_factors <- function(number) {
  factors <- c()    
  for (i in 1:number) {
    if (number %% i == 0) {
      factors <- c(factors, i)  # Add 'i' to the factors vector
    }
  }
  
  return(factors)
}

given_number <- 36

factors_of_given_number <- find_factors(given_number)
cat("Factors of", given_number, "are:", factors_of_given_number, "\n")
