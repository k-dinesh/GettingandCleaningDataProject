# GettingandCleaningDataProject

Raw Data
--------

The raw data for the project is available in the zip file at the below location. Information regarding raw data is available in the "README.txt" file present in the zip file.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

run_analysis.R
--------------

This script is used to clean the raw data and generate a tidy output for further analysis. It does the following steps

1.	Downloads the raw data zip file to the current working directory and unzip the file
2.	Reads the raw files and create tables for each data file (activity_lables, features, subject_test, subject_train, X_test, X_train, y_test, y_train).
3.	Merges test and training data into one data set.
4.	Extracts only the measurements on the mean and standard deviation for each measurement.
5.	Uses descriptive activity names to name the activities in the data set.
6.	Appropriately labels the data set with descriptive variable names.
7.	From the above data set, creates a tidy data set with the average of each variable for each activity and each subject.
8.	Writes the tidy data to "tidydata.txt" file in the working directory location.

tidydata.txt
------------

This is the final output of the "run_analysis.R" script and the file "CodeBook.md" contains information about the content of the tidy data set.

