data(airquality)

mean_temp <- sum(airquality$Temp) / length(airquality$Temp)

first_five_rows <- airquality[1:5, ]

selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]

coldest_day <- airquality$Day[which.min(airquality$Temp)]

summary_stats <- summary(airquality)

library(reshape2)
melted_data <- melt(airquality)

melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))

cast_data <- dcast(melted_data_id, Month + Day ~ variable)

average_per_month <- aggregate(cbind(Ozone, Solar.R, Wind, Temp) ~ Month, data = airquality, mean)


print("Mean temperature:")
print(mean_temp)
print("First five rows:")
print(first_five_rows)
print("Selected columns:")
print(selected_columns)
print("Coldest day:")
print(coldest_day)
print("Summary statistics:")
print(summary_stats)
print("Melted data:")
print(head(melted_data))
print("Melted data with Month and Day as ID variables:")
print(head(melted_data_id))
print("Casted data:")
print(head(cast_data))
print("Average per month:")
print(average_per_month)
