---
title: "Code Book - Getting and Cleaning Data (Course Project)"
author: "Tobias Eder"
date: "14. November 2015"
output: html_document
---

This code book describes the variables, the data, and any transformations or work that is performed to clean up the data with the help of the run_analysis.R script and to create the tidy.txt file.

---

In general, the data files used to generate the tidy.txt file are:

a. activity_labels.txt
b. features.txt
c. X_train.txt
d. y_train.txt
e. subject_train.txt
f. X_test.txt
g. y_test.txt
h. subject_test.txt

---

From these data files, the following identifiers are identified:

a. 'subject':  ID of the test subject
b. 'activity': ID of the activity

'subject' and 'activity' form a unique identifier for each tuple in the tidy.txt file, according to which the corresponding measurements can be selected and analyzed.

---

The measurements taken describe the following activities assigned to a unique subject:

ID  1 Walking
ID  2 Walking Upstairs
ID  3 Walking Downstairs
ID  4 Sitting
ID  5 Standing
ID  6 Laying

---

Tidy.txt contains the following measurements:

- tBodyAccMeanX
- tBodyAccMeanY
- tBodyAccMeanZ
- tBodyAccStdX
- tBodyAccStdY
- tBodyAccStdZ
- tGravityAccMeanX
- tGravityAccMeanY
- tGravityAccMeanZ
- tGravityAccStdX
- tGravityAccStdY
- tGravityAccStdZ
- tBodyAccJerkMeanX
- tBodyAccJerkMeanY
- tBodyAccJerkMeanZ
- tBodyAccJerkStdX
- tBodyAccJerkStdY
- tBodyAccJerkStdZ
- tBodyGyroMeanX
- tBodyGyroMeanY
- tBodyGyroMeanZ
- tBodyGyroStdX
- tBodyGyroStdY
- tBodyGyroStdZ
- tBodyGyroJerkMeanX
- tBodyGyroJerkMeanY
- tBodyGyroJerkMeanZ
- tBodyGyroJerkStdX
- tBodyGyroJerkStdY
- tBodyGyroJerkStdZ
- tBodyAccMagMean
- tBodyAccMagStd
- tGravityAccMagMean
- tGravityAccMagStd
- tBodyAccJerkMagMean
- tBodyAccJerkMagStd
- tBodyGyroMagMean
- tBodyGyroMagStd
- tBodyGyroJerkMagMean
- tBodyGyroJerkMagStd
- fBodyAccMeanX
- fBodyAccMeanY
- fBodyAccMeanZ
- fBodyAccStdX
- fBodyAccStdY
- fBodyAccStdZ
- fBodyAccMeanFreqX
- fBodyAccMeanFreqY
- fBodyAccMeanFreqZ
- fBodyAccJerkMeanX
- fBodyAccJerkMeanY
- fBodyAccJerkMeanZ
- fBodyAccJerkStdX
- fBodyAccJerkStdY
- fBodyAccJerkStdZ
- fBodyAccJerkMeanFreqX
- fBodyAccJerkMeanFreqY
- fBodyAccJerkMeanFreqZ
- fBodyGyroMeanX
- fBodyGyroMeanY
- fBodyGyroMeanZ
- fBodyGyroStdX
- fBodyGyroStdY
- fBodyGyroStdZ
- fBodyGyroMeanFreqX
- fBodyGyroMeanFreqY
- fBodyGyroMeanFreqZ
- fBodyAccMagMean
- fBodyAccMagStd
- fBodyAccMagMeanFreq
- fBodyBodyAccJerkMagMean
- fBodyBodyAccJerkMagStd
- fBodyBodyAccJerkMagMeanFreq
- fBodyBodyGyroMagMean
- fBodyBodyGyroMagStd
- fBodyBodyGyroMagMeanFreq
- fBodyBodyGyroJerkMagMean
- fBodyBodyGyroJerkMagStd
- fBodyBodyGyroJerkMagMeanFreq
