data(ChickWeight)

boxplot(ChickWeight$weight ~ ChickWeight$Diet, main="Box plot of Weight grouped by Diet",
        xlab="Diet", ylab="Weight", col=c("blue","green","red","orange"))

hist(subset(ChickWeight, Diet == 1)$weight, main="Histogram of Weight for Diet-1",
     xlab="Weight", ylab="Frequency", col="lightblue")

plot(ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Diet, 
     main="Scatter plot of Weight vs Time grouped by Diet", 
     xlab="Time", ylab="Weight")
legend("topright", legend=unique(ChickWeight$Diet), col=1:length(unique(ChickWeight$Diet)), pch=1, cex=0.8)
