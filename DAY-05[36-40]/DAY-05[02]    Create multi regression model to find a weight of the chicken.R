data(ChickWeight)

ChickWeight$Diet <- as.factor(ChickWeight$Diet)

model <- lm(weight ~ Time + Diet, data = ChickWeight)

new_data <- data.frame(Time = 10, Diet = factor(1, levels = levels(ChickWeight$Diet)))
predicted_weight <- predict(model, newdata = new_data)
cat("Predicted weight for Time = 10 and Diet = 1:", predicted_weight, "\n")

actual_weight <- subset(ChickWeight, Time == 10 & Diet == "1")$weight
error <- actual_weight - predicted_weight
cat("Error in the model:", error, "\n")
