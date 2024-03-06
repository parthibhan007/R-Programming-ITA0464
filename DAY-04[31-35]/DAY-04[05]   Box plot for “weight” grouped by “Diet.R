data(ChickWeight)

boxplot(ChickWeight$weight ~ ChickWeight$Diet,
        xlab = "Diet",
        ylab = "Weight",
        main = "Box plot of Weight grouped by Diet")

hist(ChickWeight$weight[ChickWeight$Diet == 1],
     xlab = "Weight",
     ylab = "Frequency",
     main = "Histogram of Weight for Diet-1",
     col = "skyblue")

par(mfrow = c(2, 2))
for (diet in unique(ChickWeight$Diet)) {
  subset_data <- subset(ChickWeight, Diet == diet)
  plot(subset_data$Time, subset_data$weight,
       xlab = "Time",
       ylab = "Weight",
       main = paste("Scatter plot of Weight vs Time for Diet", diet),
       col = diet)
}
