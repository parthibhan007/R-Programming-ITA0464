# Load required library
library(datasets)

# Load iris dataset
data(iris)

# Set seed for reproducibility
set.seed(123)

# Randomly sample 80% data for training and 20% for testing
train_index <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Create Logistic Regression model
model <- glm(Species ~ Petal.Width + Petal.Length, data = train_data, family = binomial)

# Predict probabilities using test data
probabilities <- predict(model, newdata = test_data, type = "response")

# Convert probabilities to predicted class
predicted_class <- ifelse(probabilities > 0.5, "versicolor", "not versicolor")

# Create Confusion matrix
conf_matrix <- table(test_data$Species, predicted_class)

c_values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean_c <- mean(c_values)
median_c <- median(c_values)
mode_c <- names(sort(table(c_values), decreasing = TRUE))[1]
d
sorted_unique_c <- sort(unique(c_values))
second_highest <- sorted_unique_c[length(sorted_unique_c) - 1]
third_lowest <- sorted_unique_c[3]


print("Mean of c:")
print(mean_c)
print("Median of c:")
print(median_c)
print("Mode of c:")
print(mode_c)
print("Second highest value of c:")
print(second_highest)
print("Third lowest value of c:")
print(third_lowest)
print("Confusion Matrix:")
print(conf_matrix)
