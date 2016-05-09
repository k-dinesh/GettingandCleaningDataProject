# GettingandCleaningDataProject
Coursera Course Getting and Cleaning Data

Raw Data
--------

The raw data for the project is available in the zip file at the below location. Information regarding raw data is available in the "README.txt" file present in the zip file.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

run_analysis.R
--------------

This script is used to clean the raw data and generate a tidy output for further analysis. It does the following steps

1.	Downloads the raw data files to the current working directory.
2.	Merges the training and the test sets to create one data set.
3.	Extracts only the measurements on the mean and standard deviation for each measurement.
4.	Uses descriptive activity names to name the activities in the data set.
5.	Appropriately labels the data set with descriptive variable names.
6.	From the data set in step 4, creates tidy data set with the average of each variable for each activity and each subject.
7.	Writes the tidy data to "tidydata.csv" file in the working directory location.

tidydata.csv
------------

This is the final output of the "run_analysis.R" script and the file "CodeBook.md" contains information about the content of the tidy data set.

