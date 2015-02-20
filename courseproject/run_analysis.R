# run_analysis.R
# this file stores the code to create the tidy data set for the 
# "Getting and Cleaning Data" course project
# By Travis Fell


# 010. Merge the training and test data set into one data set
# Read all applicable data sets and packages into R
library(dplyr)
features <- read.table("UCI HAR Dataset/features.txt",header = FALSE)
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
testLabels <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
testResults <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
trainLabels <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainResults <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
# combine the test and train data sets (like a SQL union query)
results <- rbind(testResults, trainResults)
# name the columns in the combined data set
colnames(results) <- paste("AvgOf", features[,2], sep = "-")
# append test and train subject ID's to the results sets
subject <- rbind(subjectTest, subjectTrain)
results[,"subjectID"] <- subject
# append testLabels to testResults to enable activity name matching
labels <- rbind(testLabels, trainLabels)
results[,"activityID"] <- labels


# 020. Extracts only the measurements on the mean and standard deviation for each measurement. 
resultscols <- colnames(results) 
#also need to pull activity and subject ID for later matching
aveStdCols <- grep("mean|std|activity|subject", resultscols, ignore.case = TRUE) 
aveStdDtl <- results[,aveStdCols]


# 030. Uses descriptive activity names to name the activities in the data set
names(activities) <- c("activityID", "activity")
# append activity name based on activity ID
aveStdDtl <- merge(activities, aveStdDtl, by.x = "activityID", by.y = "activityID")


# 040. Appropriately labels the data set with descriptive variable names. 
# see the colnames(results) <- paste("AvgOf", features[,2], sep = "-") command above for descriptive column naming


# 050. From data set in step 4, create second, indepedent tidy
# data set with the averages of each variable for each activity and each subject
by_activitySum <- group_by(aveStdDtl, activity, subjectID) %>% summarise_each(funs(mean), matches("mean()"), matches("std()"))
#View(by_activitySum)
write.table(by_activitySum, file="tidy.txt", sep ="\t", row.name = FALSE)
