# README.md for run_analysis.R
Getting and Cleaning Data Course Project 
By Travis Fell
February 19, 2015
http://www.linked.com/travisfell


This script contains code for the Coursera.org "Getting and Cleaning Data" final course project. It assumes: 

1. The source data files have already been downloaded (using this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzipped.

2. The script and source data files reside in the working same directory. 


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
This section gives an overview of how the run_analysis.R script pulls in and reshapes data enroute to creating the data set described in the CodeBook.md file.  

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
3. Write the final result to a .txt in the same working directory. 
