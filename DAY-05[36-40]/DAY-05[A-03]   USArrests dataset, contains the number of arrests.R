data("USArrests")


summary(USArrests)

max_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", max_rape_state, "\n")

max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("State with the highest crime rate for murder:", max_murder_state, "\n")
cat("State with the lowest crime rate for murder:", min_murder_state, "\n")

correlation <- cor(USArrests)
print("Correlation Matrix:")
print(correlation)

median_assault <- median(USArrests$Assault)
states_above_median <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests more than median:", states_above_median, "\n")

bottom_25_murder <- rownames(USArrests)[USArrests$Murder < quantile(USArrests$Murder, 0.25)]
cat("States in the bottom 25% of murder:", bottom_25_murder, "\n")


hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests")
lines(density(USArrests$Murder), col = "red")

plot(USArrests$UrbanPop, USArrests$Murder, main = "Murder Arrest Rate vs Urban Population", 
     xlab = "Proportion of Urban Population", ylab = "Murder Arrest Rate", col = as.numeric(USArrests$Assault), pch = 16)

barplot(USArrests$Murder, main = "Murder Rate by State", xlab = "State", ylab = "Murder Rate")
