---
title: "README"
author: "jmuse313"
date: "09/21/2014"
output: html_document
---

The R script, “run_analysis.R”, in this file reads in the necessary files from the UCI HAR Dataset file and then does the following:

0) Creates a vector for column names to be used when merging the training and test datasets.  This step is carried out first in order to ensure that when the files are conbined into a dataframe, columns are appropriately matched. The features.txt file is used to create most of the column names and the vector is edited to exclude many special characters to improve the readability of the column names.

1) Merges the training and the test sets to create one data set. Combines the subject number, activity, and data for the test group, and then edits the column names. Combines the subject number, activity, and data for the training group, and then edits the column names. Finally test and training dataframes are combined into a cohort dataframe.

2) Extracts only the measurements on the mean and standard deviation for each measurement. This step assumes that all columns that contain "mean" or "std" in the column name are desired.  The script then subsets the cohort dataframe, selecting the subject and activity columns, as well as, those containing "mean" and "std".

3) Uses descriptive activity names to name the activities in the data set. This part of the script uses the activity_labels.txt file.

4) Appropriately labels the data set with descriptive variable names. This was carried out at the beginning of the script.

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. This part of the script creates a new dataframe called AveragesDF, which contains the average of each variable for each activity and each subject.  It also adjusts the column names to reflect this change.  Finally, it writes the new dataframe out as a text file.
