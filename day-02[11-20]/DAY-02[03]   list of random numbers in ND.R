set.seed(123)
random_numbers <- rnorm(100, mean = 0, sd = 1)  # Generating 100 random numbers with mean 0 and standard deviation 1
occurrences <- table(random_numbers)
print("Occurrences of each value:")
print(occurrences)
