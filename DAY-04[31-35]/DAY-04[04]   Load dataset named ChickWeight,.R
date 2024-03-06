data(ChickWeight)

ordered_df <- ChickWeight[order(ChickWeight$weight, ChickWeight$Diet), ]
last_6_records <- tail(ordered_df, 6)

melted_df <- data.frame(
  Chick = rep(ChickWeight$Chick, each = 4),
  Time = rep(ChickWeight$Time, each = 4),
  Diet = rep(ChickWeight$Diet, each = 4),
  variable = rep(c("weight", "Time", "Chick", "Diet"), times = nrow(ChickWeight)),
  value = c(ChickWeight$weight, ChickWeight$Time, ChickWeight$Chick, ChickWeight$Diet)
)

mean_weight <- tapply(ChickWeight$weight, ChickWeight$Diet, mean)

mode_weight <- tapply(ChickWeight$weight, ChickWeight$Diet, function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
})

print("Last 6 records:")
print(last_6_records)
print("Mean value of weight grouped by Diet:")
print(mean_weight)
print("Mode of weight grouped by Diet:")
print(mode_weight)
