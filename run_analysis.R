## Getting and Cleaning Data
## Course Project:

## Create one R script called run_analysis.R that does the following:
## a. Merge the training and the test sets to create one data set
## b. Extract only the measurements on the mean and standard deviation for each measurement 
## c. Use descriptive activity names to name the activities in the data set
## d. Appropriately labels the data set with descriptive variable names. 
## e. From the data set in step 4, creates a second, independent tidy 
##    data set with the average of each variable for each activity and 
##    each subject.

library(reshape2)
library(dplyr)
# 1a. Set the path to the downloaded files and read activity_labels and features

filename <- "getdata_dataset.zip"

## 1b. Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
my_activity_labels <- data.frame(lapply(activity_labels, as.character), stringsAsFactors=FALSE)

features <-read.table("UCI HAR Dataset/features.txt")
my_features <- data.frame(lapply(features, as.character), stringsAsFactors = FALSE)


# 2.  Extract only the measurements on the mean and standard deviation for each measurement

temp <- sqldf("select V1 from features where V2 like '%mean%' or V2 like '%std%'")
temp <- temp[, 1]

feature_names <- my_features[temp,2]
feature_names = gsub('-mean', 'Mean', feature_names)
feature_names = gsub('-std', 'Std', feature_names)
feature_names <- gsub('[-()]', '', feature_names)

# 3. Read datasets for "train"

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")[temp]
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

training <- cbind(subject_train, y_train, x_train)

# 4. Read datasets for "test"

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")[temp]
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

testing <- cbind(subject_test, y_test, x_test)

# 5. Join "training" and "testing" datasets

join <- rbind(training, testing)
colnames(join) <- c("subject", "activity", feature_names)

# 6. Convert activities & subjects into factors
join$activity <- factor(join$activity, levels = my_activity_labels[,1], labels = my_activity_labels[,2])
join$subject <- as.factor(join$subject)

# 7. Prepare the final dataset

join <- melt(join, id = c("subject", "activity"))
tidy <- dcast(join, subject + activity ~ variable, mean)

# 8. Write the tidy.txt file

write.table(tidy, "tidy.txt", row.names = FALSE, quote = FALSE)

