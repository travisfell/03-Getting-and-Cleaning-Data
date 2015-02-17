# This script contains code for the 
# Getting and Cleaning Data Course project

# run_analysis.R
# this file stores the code to create the tidy data set for the 
# "Getting and Cleaning Data" course projecte

# 010. Merge the training and test data set into one data set

# 010.A Read all applicable data sets and packages into R
library(dplyr)

features <- read.table("UCI HAR Dataset/features.txt",header = FALSE)
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
testLabels <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
testResults <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
trainLabels <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainResults <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# name the columns in each data set
names(testResults) <- features[,2]
names(trainResults) <- features[,2]
names(activities) <- c("activityID", "activity")

# append test and train subject ID's to the results sets
testResults[,"subjectID"] <- subjectTest
trainResults[,"subjectID"] <- subjectTrain

#merge the sets

# 010.B Join the tables on the appropriate keys to create the tidy data needed for the rest of the script



# 030. Give descriptive activity names to the activities in the data set
# append testLabels to testResults to enable activity name matching
testResults[,"activityID"] <- testLabels
trainResults[,"activityID"] <- trainLabels

# append activity name based on activity ID
testResults2 <- merge(activities, testResults, by.x = "activityID", by.y = "activityID")
trainResults2 <- merge(activities, trainResults, by.x = "activityID", by.y = "activityID")

# combine the test and train data sets (like a SQL union query)
results <- rbind(testResults2, trainResults2)

# 020. Extracts only the measurements on the mean and standard deviation for each measurement. 
resultscols <- colnames(results) 
aveStdCols <- grep("mean|std|activity", resultscols, ignore.case = TRUE)
aveStdDetails <- results[,aveStdCols]


# 050. From data set in step 4, create second, indepedent tidy
# data set with the averages of each variable for each activity

#aveStdSummary <- summarize(group_by(aveStdDetails, activity), lapply(aveStdDetails[,3:88], mean))
aveStdColNames <- matrix(names(aveStdDetails[,3:88]))
#aveStdSummary <- xtabs(mean~activity + aveStdColNames, data=aveStdDetails)
#aveStdSummary <-summarize(group_by(aveStdDetails, activity), mean(aveStdColNames))
