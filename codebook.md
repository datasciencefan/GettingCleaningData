Codebook.md

The data used in this analysis can be found here and is used for the Coursera Peer Assignment for Getting and Cleaning Data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A description of the data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The variables in the tidy data set are shown as follows:
"tBodyAcc-mean()-X"	"tBodyAcc-mean()-Y"	"tBodyAcc-mean()-Z"	"tGravityAcc-mean()-X"	"tGravityAcc-mean()-Y"	"tGravityAcc-mean()-Z"	"tBodyAccJerk-mean()-X"	"tBodyAccJerk-mean()-Y"	"tBodyAccJerk-mean()-Z"	"tBodyGyro-mean()-X"	"tBodyGyro-mean()-Y"	"tBodyGyro-mean()-Z"	"tBodyGyroJerk-mean()-X"	"tBodyGyroJerk-mean()-Y"	"tBodyGyroJerk-mean()-Z"	"tBodyAccMag-mean()"	"tGravityAccMag-mean()"	"tBodyAccJerkMag-mean()"	"tBodyGyroMag-mean()"	"tBodyGyroJerkMag-mean()"	"fBodyAcc-mean()-X"	"fBodyAcc-mean()-Y"	"fBodyAcc-mean()-Z"	"fBodyAcc-meanFreq()-X"	"fBodyAcc-meanFreq()-Y"	"fBodyAcc-meanFreq()-Z"	"fBodyAccJerk-mean()-X"	"fBodyAccJerk-mean()-Y"	"fBodyAccJerk-mean()-Z"	"fBodyAccJerk-meanFreq()-X"	"fBodyAccJerk-meanFreq()-Y"	"fBodyAccJerk-meanFreq()-Z"	"fBodyGyro-mean()-X"	"fBodyGyro-mean()-Y"	"fBodyGyro-mean()-Z"	"fBodyGyro-meanFreq()-X"	"fBodyGyro-meanFreq()-Y"	"fBodyGyro-meanFreq()-Z"	"fBodyAccMag-mean()"	"fBodyAccMag-meanFreq()"	"fBodyBodyAccJerkMag-mean()"	"fBodyBodyAccJerkMag-meanFreq()"	"fBodyBodyGyroMag-mean()"	"fBodyBodyGyroMag-meanFreq()"	"fBodyBodyGyroJerkMag-mean()"	"fBodyBodyGyroJerkMag-meanFreq()"	"angle(tBodyAccMean,gravity)"	"angle(tBodyAccJerkMean),gravityMean)"	"angle(tBodyGyroMean,gravityMean)"	"angle(tBodyGyroJerkMean,gravityMean)"	"angle(X,gravityMean)"	"angle(Y,gravityMean)"	"angle(Z,gravityMean)"	"tBodyAcc-std()-X"	"tBodyAcc-std()-Y"	"tBodyAcc-std()-Z"	"tGravityAcc-std()-X"	"tGravityAcc-std()-Y"	"tGravityAcc-std()-Z"	"tBodyAccJerk-std()-X"	"tBodyAccJerk-std()-Y"	"tBodyAccJerk-std()-Z"	"tBodyGyro-std()-X"	"tBodyGyro-std()-Y"	"tBodyGyro-std()-Z"	"tBodyGyroJerk-std()-X"	"tBodyGyroJerk-std()-Y"	"tBodyGyroJerk-std()-Z"	"tBodyAccMag-std()"	"tGravityAccMag-std()"	"tBodyAccJerkMag-std()"	"tBodyGyroMag-std()"	"tBodyGyroJerkMag-std()"	"fBodyAcc-std()-X"	"fBodyAcc-std()-Y"	"fBodyAcc-std()-Z"	"fBodyAccJerk-std()-X"	"fBodyAccJerk-std()-Y"	"fBodyAccJerk-std()-Z"	"fBodyGyro-std()-X"	"fBodyGyro-std()-Y"	"fBodyGyro-std()-Z"	"fBodyAccMag-std()"	"fBodyBodyAccJerkMag-std()"	"fBodyBodyGyroMag-std()"	"fBodyBodyGyroJerkMag-std()"

The names were chosen from the original datasets - all are means or standard deviations of an observation

The transformations that took place on the data are as follows:
names were given to the datasets via colnames()
the data was aggregated via rbind()
the data was filtered for mean() and std() variables only
the data was melted via melt()
the data was casted via dcast()
