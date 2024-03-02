# Temperature data for three cities
city_A <- c(22, 25, 21, 23, 24, 22, 20)
city_B <- c(18, 20, 19, 21, 20, 19, 18)
city_C <- c(30, 32, 31, 33, 34, 32, 31)

# i. Calculate the average temperature for each city
avg_temp_A <- mean(city_A)
avg_temp_B <- mean(city_B)
avg_temp_C <- mean(city_C)

cat("Average temperature for City A:", avg_temp_A, "°C\n")
cat("Average temperature for City B:", avg_temp_B, "°C\n")
cat("Average temperature for City C:", avg_temp_C, "°C\n\n")

# ii. Identify the city with the highest average temperature
highest_avg_temp <- max(avg_temp_A, avg_temp_B, avg_temp_C)
cat("City with the highest average temperature:", 
    ifelse(highest_avg_temp == avg_temp_A, "City A",
    ifelse(highest_avg_temp == avg_temp_B, "City B", "City C")), "\n\n")

variance_A <- var(city_A)
variance_B <- var(city_B)
variance_C <- var(city_C)

cat("Variance in temperature for City A:", variance_A, "\n")
cat("Variance in temperature for City B:", variance_B, "\n")
cat("Variance in temperature for City C:", variance_C, "\n\n")

max_temp_day_A <- which.max(city_A)
max_temp_day_B <- which.max(city_B)
max_temp_day_C <- which.max(city_C)

cat("Day with maximum temperature for City A:", max_temp_day_A, "\n")
cat("Maximum temperature for City A on this day:", city_A[max_temp_day_A], "°C\n")
cat("Day with maximum temperature for City B:", max_temp_day_B, "\n")
cat("Maximum temperature for City B on this day:", city_B[max_temp_day_B], "°C\n")
cat("Day with maximum temperature for City C:", max_temp_day_C, "\n")
cat("Maximum temperature for City C on this day:", city_C[max_temp_day_C], "°C\n")
