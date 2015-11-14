---
title: "README"
author: "Tobias Eder"
date: "14. November 2015"
output: html_document
---

This document describes all steps taken to generate the tidy.txt file as output of the run_analysis.R script.

---

1.  Prepare necessary libraries
1a. Set the path to the downloaded files and read activity_labels and features
1b. Download and unzip the downloaded zip file
2.  Extract only the measurements on the mean and standard deviation for each measurement from (2)
3. Read datasets for "train" derived from (2)
4. Read datasets for "test" derived from (2)
5. Join "training" and "testing" datasets derived from (3) and (4)
6. Convert activitiy & subject IDs into factors based on (5)
7. Prepare the final dataset based on (6)
8. Write the tidy.txt file based on (7)

