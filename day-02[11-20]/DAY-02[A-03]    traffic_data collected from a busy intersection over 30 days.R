library(dplyr)
library(broom)
traffic_data <- data.frame(day = 1:30,
                           accidents = c(5, 6, 7, 8, 9, 10, 12, 13, 14, 15,
                                         16, 17, 18, 19, 20, 22, 23, 24, 25, 26,
                                         27, 28, 29, 30, 32, 33, 34, 35, 36, 38))

poisson_model <- glm(accidents ~ day, data = traffic_data, family = poisson)

summary(poisson_model)

coefficients(poisson_model)

new_day <- data.frame(day = 31)
predicted_accidents <- predict(poisson_model, newdata = new_day, type = "response")

cat("Predicted number of accidents on the 31st day:", round(predicted_accidents))
