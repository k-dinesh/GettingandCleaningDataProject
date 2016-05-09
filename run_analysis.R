#This code will create a tidy dataset for the Coursera course
#Getting and Cleaning Data Course Project.

#1. LOAD THE NECCESSARY PACKAGES
library(downloader)
library(dplyr)

#-------------------------------------------------------------------------------

#2. DOWNLOAD AND UNZIP THE RAW DATA FILE INTO THE WORKING DIRECTORY
download.file(url = "https://d396qusza40orc.cloudfront.net/
              getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "projectfiles.zip")
unzip("projectfiles.zip",exdir = ".")

#-------------------------------------------------------------------------------

#3. READ THE DATA FILES AND CREATE TABLES

#3.1 Read activity labels and features
actlabels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                       header = FALSE,sep = "",
                       colClasses = c("numeric","character"))
features <- read.table("./UCI HAR Dataset/features.txt",
                      header = FALSE,sep = "",
                      colClasses = c("numeric","character"))

#3.2 Read test data
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt",
                   header = FALSE,sep = "",
                   colClasses = "numeric")
ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt",
                   header = FALSE,sep = "",colClasses = "numeric",
                   col.names = "activity")
stest <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                   header = FALSE,sep = "",colClasses = "numeric",
                   col.names = "subject")

#3.3 Read train data
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt",
                    header = FALSE,sep = "",
                    colClasses = "numeric")
ytrain <- read.table("./UCI HAR Dataset/train/Y_train.txt",
                    header = FALSE,sep = "",
                    colClasses = "numeric",col.names = "activity")
strain <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                    header = FALSE,sep = "",
                    colClasses = "numeric",col.names = "subject")

#-------------------------------------------------------------------------------

#4. CLEANING DATA

#4.1 Label the data set with descriptive variable names from features table
names(xtest) <- as.character(features$V2)
names(xtrain) <- as.character(features$V2)

#4.3 Merge test and train data into one date set
test <- cbind(stest,ytest,xtest)
train <- cbind(strain,ytrain,xtrain)
testtrain <- rbind(test,train)
names(testtrain) <- tolower(names(testtrain))

#4.4 Extract only the measurements on the mean and
#    standard deviation for each measurement
meanstd <- testtrain[grep("mean\\()|std\\()|subject|activity",names(testtrain))]

#4.5 Use descriptive activity names to name the activities in the data set
meanstd<-merge(meanstd,actlabels,by.x = "activity",by.y = "V1")
meanstd$activity<-NULL
colnames(meanstd)[colnames(meanstd)=="V2"]<-"activity"

#4.6 Prefix '0' to one digit subject values
meanstd$subject <- as.character(meanstd$subject)
meanstd$subject[grepl("^[1-9]?$",meanstd$subject)] <-
      paste0("0",meanstd$subject[grepl("^[1-9]?$",meanstd$subject)])

#4.7 Make subject and activity as factors and rearrange columns
meanstd$subject <- as.factor(meanstd$subject)
meanstd$activity <- as.factor(meanstd$activity)
meanstd <- meanstd[,c(1,68,2:67)]

#-------------------------------------------------------------------------------

#5. CREATE A TIDY DATA SET CONTAINING AVERAGE OF EACH VARIABLE FOR
#   EACH ACTIVITY AND EACH SUBJECT
tidydata <- meanstd %>%
      group_by(subject,activity) %>%
      summarise_each(funs(mean))

#-------------------------------------------------------------------------------

#6. OUTPUT THE TIDY DATA SET INTO A CSV FILE
write.csv(tidydata,"tidydata.csv")


