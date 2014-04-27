#Load the raw data into R
trainX <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

testX <- read.table("./UCI HAR Dataset/test/X_test.txt")
testY <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

features <- read.table("./UCI HAR Dataset/features.txt")

#Combine the test and train files
dataX <- rbind(testX, trainX)
dataY <- rbind(testY, trainY)
dataSub <- rbind(subject_test, subject_train)

#Extract only the mean() and std() information
b<-sapply(c("mean()", "std()"), grep, features[,2], ignore.case=1)
bIndex <-unlist(b)

#Give column names to data
colnames(dataX) <- features[ ,2]
colnames(dataY) <- "Activity"
colnames(dataSub) <- "Subject"

#Create a filtered X variable using only std and mean data
stdMeanDataX <- dataX[ ,bIndex]

#Define the activities
activities <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
dataNameY <- dataY
colnames(dataNameY) <- "Activity"

for (i in 1:nrow(dataY)) {
        dataNameY[[1]][i] <- activities[dataY[[1]][i]]
}

#Combine all data into one variable
dataSet <- cbind(dataSub, dataNameY, stdMeanDataX)

#Create the tidy data set
dataMelt <- melt(dataSet, id.vars = c("Activity", "Subject"))
dataCast <- dcast(dataMelt, Subject + Activity ~ variable, mean)

tidyData<- dataCast

write.table(tidyData, "./tidyData.txt", sep="\t")

