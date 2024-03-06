df1 <- data.frame(numid = c(12, 14, 10, 11))
df2 <- data.frame(numid = c(13, 15, 11, 12))
inner_join <- merge(df1, df2, by = "numid", all = FALSE)

outer_join <- merge(df1, df2, by = "numid", all = TRUE)

left_join <- merge(df1, df2, by = "numid", all.x = TRUE)

right_join <- merge(df1, df2, by = "numid", all.y = TRUE)

print("Inner Join:")
print(inner_join)

print("Outer Join:")
print(outer_join)	

print("Left Join:")
print(left_join)

print("Right Join:")
print(right_join)
