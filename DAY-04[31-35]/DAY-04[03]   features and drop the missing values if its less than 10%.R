data(airquality)

missing_values <- colMeans(is.na(airquality))
threshold <- 0.1

for (col in names(airquality)) {
  if (missing_values[col] < threshold) {
    airquality <- na.omit(airquality)
  } else {
    mean_value <- mean(airquality[[col]], na.rm = TRUE)
    airquality[[col]][is.na(airquality[[col]])] <- mean_value
  }
}

model <- lm(Ozone ~ Solar.R, data = airquality)

plot(airquality$Solar.R, airquality$Ozone, xlab = "Solar Radiation", ylab = "Ozone", main = "Scatter Plot with Regression Line")
abline(model, col = "red")

