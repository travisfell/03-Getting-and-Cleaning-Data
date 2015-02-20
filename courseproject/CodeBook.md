---
title: "CodeBook"
author: "Travis Fell"
date: "Thursday, February 19, 2015"
output: html_document
---

# This file describes the data sets used and the variables 
# created by the run_analysis.R script written by Travis Fell in # Feb. 2015 for the Coursera "Getting and Cleaning Data" course. 

## Source Data Sets
This script imports the following files from the source data set

- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


## Data Manipulation
This section gives an overview of how the run_analysis.R script pulls in and reshapes data enroute to creating the data set described in the Variables section below. 

### Pull in and merge the initial data
1. Read in the files above to separate data frames. 
2. Merge the test and train results data into the same data frame. 
3. Apply the variables names from the features.txt file to the combined results data frame along with a prefix of "AvgOf-" to help make more descriptive for the final data set. 
4. Merge the test and train subjects into the same data frame. 
5. Add the subjects to the results data set in a column called "subjectID". 
6. Merge the test and train labels into the same data frame. 
7. Add the labels to the results data set in a column called "activityID". 

### Extract only the variables that are of the type "mean" or "standard deviation
1. Capture all the results column names in a separate character vector.
2. Select only the columns with "mean", "std", "activity", "subject" in the column name and assigne to a separate character vector. 
3. Use the column names from step 2 above to subset the results data frame into a separate data frame that contains only those columns. 

### Apply descriptive activity names to the activities in the results set
1. Add these column names to the activities data frame: "activityID", "activity". 
2. Merge the activity and the average/stdev data frame created above, joining on the activityID column in each. 

### Average each variable by each unique combination of activity and subject
1. Group the average/stdev data set by activity and subjectID. 
2. Average each field with "mean" or "std" in the column name. 
3. Write the final result to a .csv in the same working directory. 


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


