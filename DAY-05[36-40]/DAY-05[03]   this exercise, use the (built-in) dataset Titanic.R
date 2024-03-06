data(Titanic)

barplot(rowSums(Titanic[,,,"Yes"]), beside=TRUE, col=rainbow(2), legend=TRUE, 
        main="Survival Count by Passenger Class", xlab="Passenger Class", ylab="Count")
legend("topright", legend=c("Survived", "Did not survive"), fill=rainbow(2))

barplot(as.matrix(Titanic[,,c("Male","Female"),"Yes"]), beside=TRUE, col=c("lightblue", "pink"), legend=TRUE, 
        main="Survival Count by Passenger Class and Gender", xlab="Passenger Class", ylab="Count")
legend("topright", legend=c("Male", "Female"), fill=c("lightblue", "pink"))

hist(Titanic$Age, breaks=20, col="skyblue", main="Age Distribution", xlab="Age", ylab="Frequency")
