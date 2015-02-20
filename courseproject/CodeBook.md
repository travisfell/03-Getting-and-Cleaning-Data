# CodeBOok.md for run_analysis.R
Getting and Cleaning Data Course Project 
By Travis Fell
February 19, 2015
http://www.linked.com/travisfell

This file describes the variables created by the run_analysis.R script written by Travis Fell for the Coursera "Getting and Cleaning Data" course. 

## Variables
Below is a list of the variables in tidy data set produced by the run_analysis.R script. 

activity: Factor with 6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
subjectID: Integer that uniquely identified each patient. 
AvgOf-tBodyAcc-mean()-X: Numeric mean of the base measure. 
AvgOf-tBodyAcc-mean()-Y: Numeric mean of the base measure. 
AvgOf-tBodyAcc-mean()-Z: Numeric mean of the base measure. 
AvgOf-tGravityAcc-mean()-X: Numeric mean of the base measure. 
AvgOf-tGravityAcc-mean()-Y: Numeric mean of the base measure. 
AvgOf-tGravityAcc-mean()-Z: Numeric mean of the base measure. 
AvgOf-tBodyAccJerk-mean()-X: Numeric mean of the base measure. 
AvgOf-tBodyAccJerk-mean()-Y: Numeric mean of the base measure. 
AvgOf-tBodyAccJerk-mean()-Z: Numeric mean of the base measure. 
AvgOf-tBodyGyro-mean()-X: Numeric mean of the base measure. 
AvgOf-tBodyGyro-mean()-Y: Numeric mean of the base measure. 
AvgOf-tBodyGyro-mean()-Z: Numeric mean of the base measure. 
AvgOf-tBodyGyroJerk-mean()-X: Numeric mean of the base measure. 
AvgOf-tBodyGyroJerk-mean()-Y: Numeric mean of the base measure. 
AvgOf-tBodyGyroJerk-mean()-Z: Numeric mean of the base measure. 
AvgOf-tBodyAccMag-mean(): Numeric mean of the base measure. 
AvgOf-tGravityAccMag-mean(): Numeric mean of the base measure. 
AvgOf-tBodyAccJerkMag-mean(): Numeric mean of the base measure. 
AvgOf-tBodyGyroMag-mean(): Numeric mean of the base measure. 
AvgOf-tBodyGyroJerkMag-mean(): Numeric mean of the base measure. 
AvgOf-fBodyAcc-mean()-X: Numeric mean of the base measure. 
AvgOf-fBodyAcc-mean()-Y: Numeric mean of the base measure. 
AvgOf-fBodyAcc-mean()-Z: Numeric mean of the base measure. 
AvgOf-fBodyAcc-meanFreq()-X: Numeric mean of the base measure. 
AvgOf-fBodyAcc-meanFreq()-Y: Numeric mean of the base measure. 
AvgOf-fBodyAcc-meanFreq()-Z: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-mean()-X: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-mean()-Y: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-mean()-Z: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-meanFreq()-X: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-meanFreq()-Y: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-meanFreq()-Z: Numeric mean of the base measure. 
AvgOf-fBodyGyro-mean()-X: Numeric mean of the base measure. 
AvgOf-fBodyGyro-mean()-Y: Numeric mean of the base measure. 
AvgOf-fBodyGyro-mean()-Z: Numeric mean of the base measure. 
AvgOf-fBodyGyro-meanFreq()-X: Numeric mean of the base measure. 
AvgOf-fBodyGyro-meanFreq()-Y: Numeric mean of the base measure. 
AvgOf-fBodyGyro-meanFreq()-Z: Numeric mean of the base measure. 
AvgOf-fBodyAccMag-mean(): Numeric mean of the base measure. 
AvgOf-fBodyAccMag-meanFreq(): Numeric mean of the base measure. 
AvgOf-fBodyBodyAccJerkMag-mean(): Numeric mean of the base measure. 
AvgOf-fBodyBodyAccJerkMag-meanFreq(): Numeric mean of the base measure. 
AvgOf-fBodyBodyGyroMag-mean(): Numeric mean of the base measure. 
AvgOf-fBodyBodyGyroMag-meanFreq(): Numeric mean of the base measure. 
AvgOf-fBodyBodyGyroJerkMag-mean(): Numeric mean of the base measure. 
AvgOf-fBodyBodyGyroJerkMag-meanFreq(): Numeric mean of the base measure. 
AvgOf-angle(tBodyAccMean,gravity): Numeric mean of the base measure. 
AvgOf-angle(tBodyAccJerkMean),gravityMean): Numeric mean of the base measure. 
AvgOf-angle(tBodyGyroMean,gravityMean): Numeric mean of the base measure. 
AvgOf-angle(tBodyGyroJerkMean,gravityMean): Numeric mean of the base measure. 
AvgOf-angle(X,gravityMean): Numeric mean of the base measure. 
AvgOf-angle(Y,gravityMean): Numeric mean of the base measure. 
AvgOf-angle(Z,gravityMean): Numeric mean of the base measure. 
AvgOf-tBodyAcc-std()-X: Numeric mean of the base measure. 
AvgOf-tBodyAcc-std()-Y: Numeric mean of the base measure. 
AvgOf-tBodyAcc-std()-Z: Numeric mean of the base measure. 
AvgOf-tGravityAcc-std()-X: Numeric mean of the base measure. 
AvgOf-tGravityAcc-std()-Y: Numeric mean of the base measure. 
AvgOf-tGravityAcc-std()-Z: Numeric mean of the base measure. 
AvgOf-tBodyAccJerk-std()-X: Numeric mean of the base measure. 
AvgOf-tBodyAccJerk-std()-Y: Numeric mean of the base measure. 
AvgOf-tBodyAccJerk-std()-Z: Numeric mean of the base measure. 
AvgOf-tBodyGyro-std()-X: Numeric mean of the base measure. 
AvgOf-tBodyGyro-std()-Y: Numeric mean of the base measure. 
AvgOf-tBodyGyro-std()-Z: Numeric mean of the base measure. 
AvgOf-tBodyGyroJerk-std()-X: Numeric mean of the base measure. 
AvgOf-tBodyGyroJerk-std()-Y: Numeric mean of the base measure. 
AvgOf-tBodyGyroJerk-std()-Z: Numeric mean of the base measure. 
AvgOf-tBodyAccMag-std(): Numeric mean of the base measure. 
AvgOf-tGravityAccMag-std(): Numeric mean of the base measure. 
AvgOf-tBodyAccJerkMag-std(): Numeric mean of the base measure. 
AvgOf-tBodyGyroMag-std(): Numeric mean of the base measure. 
AvgOf-tBodyGyroJerkMag-std(): Numeric mean of the base measure. 
AvgOf-fBodyAcc-std()-X: Numeric mean of the base measure. 
AvgOf-fBodyAcc-std()-Y: Numeric mean of the base measure. 
AvgOf-fBodyAcc-std()-Z: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-std()-X: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-std()-Y: Numeric mean of the base measure. 
AvgOf-fBodyAccJerk-std()-Z: Numeric mean of the base measure. 
AvgOf-fBodyGyro-std()-X: Numeric mean of the base measure. 
AvgOf-fBodyGyro-std()-Y: Numeric mean of the base measure. 
AvgOf-fBodyGyro-std()-Z: Numeric mean of the base measure. 
AvgOf-fBodyAccMag-std(): Numeric mean of the base measure. 
AvgOf-fBodyBodyAccJerkMag-std(): Numeric mean of the base measure. 
AvgOf-fBodyBodyGyroMag-std(): Numeric mean of the base measure. 
AvgOf-fBodyBodyGyroJerkMag-std(): Numeric mean of the base measure. 


