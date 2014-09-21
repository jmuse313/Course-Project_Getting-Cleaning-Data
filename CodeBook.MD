---
title: "CodeBook"
author: "jmuse313"
date: "09/21/2014"
output: html_document
---

#Course Project Code Book
##Getting and Cleaning Data

###Study Design:

The Human Activity Recognition Using Smartphones Data Set was downloaded from the UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). From their webpage:

  > The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

  > The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

###Transformations:
The original training and test datasets were merged to create one dataset, and then the columns that included measurements on mean and standard deviation were extracted and averaged for each activity and subject.  Additional details provided in the README file.

###Complete list of variables: Descriptive information below

  * activity
  * subject
  * avg_tBodyAcc.mean.X
  * avg_tBodyAcc.mean.Y
  * avg_tBodyAcc.mean.Z
  * avg_tBodyAcc.std.X
  * avg_tBodyAcc.std.Y
  * avge_tBodyAcc.std.Z
  * avg_tGravityAcc.mean.X
  * avg_tGravityAcc.mean.Y
  * avg_tGravityAcc.mean.Z
  * avg_tGravityAcc.std.X
  * avg_tGravityAcc.std.Y
  * avg_tGravityAcc.std.Z
  * avg_tBodyAccJerk.mean.X
  * avg_tBodyAccJerk.mean.Y
  * avg_tBodyAccJerk.mean.Z
  * avg_tBodyAccJerk.std.X
  * avg_tBodyAccJerk.std.Y
  * avg_tBodyAccJerk.std.Z
  * avg_tBodyGyro.mean.X
  * avg_tBodyGyro.mean.Y
  * avg_tBodyGyro.mean.Z
  * avg_tBodyGyro.std.X
  * avg_tBodyGyro.std.Y
  * avg_tBodyGyro.std.Z
  * avg_tBodyGyroJerk.mean.X
  * avg_tBodyGyroJerk.mean.Y
  * avg_tBodyGyroJerk.mean.Z
  * avg_tBodyGyroJerk.std.X
  * avg_tBodyGyroJerk.std.Y
  * avg_tBodyGyroJerk.std.Z
  * avg_tBodyAccMag.mean
  * avg_tBodyAccMag.std
  * avg_tGravityAccMag.mean
  * avg_tGravityAccMag.std
  * avg_tBodyAccJerkMag.mean
  * avg_tBodyAccJerkMag.std
  * avg_tBodyGyroMag.mean
  * avg_tBodyGyroMag.std
  * avg_tBodyGyroJerkMag.mean
  * avg_tBodyGyroJerkMag.std
  * avg_fBodyAcc.mean.X
  * avg_fBodyAcc.mean.Y
  * avg_fBodyAcc.mean.Z
  * avg_fBodyAcc.std.X
  * avg_fBodyAcc.std.Y
  * avg_fBodyAcc.std.Z
  * avg_fBodyAcc.meanFreq.X
  * avg_fBodyAcc.meanFreq.Y
  * avg_fBodyAcc.meanFreq.Z
  * avg_fBodyAccJerk.mean.X
  * avg_fBodyAccJerk.mean.Y
  * avg_fBodyAccJerk.mean.Z
  * avg_fBodyAccJerk.std.X
  * avg_fBodyAccJerk.std.Y
  * avg_fBodyAccJerk.std.Z
  * avg_fBodyAccJerk.meanFreq.X
  * avg_fBodyAccJerk.meanFreq.Y
  * avg_fBodyAccJerk.meanFreq.Z
  * avg_fBodyGyro.mean.X
  * avg_fBodyGyro.mean.Y
  * avg_fBodyGyro.mean.Z
  * avg_fBodyGyro.std.X
  * avg_fBodyGyro.std.Y
  * avg_fBodyGyro.std.Z
  * avg_fBodyGyro.meanFreq.X
  * avg_fBodyGyro.meanFreq.Y
  * avg_fBodyGyro.meanFreq.Z
  * avg_fBodyAccMag.mean
  * avg_fBodyAccMag.std
  * avg_fBodyAccMag.meanFreq
  * avg_fBodyBodyAccJerkMag.mean
  * avg_fBodyBodyAccJerkMag.std
  * avg_fBodyBodyAccJerkMag.meanFreq
  * avg_fBodyBodyGyroMag.mean
  * avg_fBodyBodyGyroMag.std
  * avg_fBodyBodyGyroMag.meanFreq
  * avg_fBodyBodyGyroJerkMag.mean
  * avg_fBodyBodyGyroJerkMag.std
  * avg_fBodyBodyGyroJerkMag.meanFreq

###Descriptive Information for Variables: 
**Activity** - One of six activities performed 

  * Walking
  * Walking Upstairs
  * Walking Downstairs
  * Sitting
  * Standing
  * Laying


**Subject** - An ID for each of the 30 volunteers within an age bracket of 19-48 years


All other variables have the format “avg_&lt;signal>.&lt;estimated-variable>.&lt;axis-if-relevant>”, where "avg" indicates that the mean of the variable was taken for each subject and activity, "signal" indicates the signal used to estimate variables of the feature vector, "estimated-variable" indicates whether it was the mean or standard deviation estimated from the signal variables, and "axis-if-relevant" indicates the relevant axial direction.  

The following **signals** were used to estimate variables of the feature vector for each pattern:

  * tBodyAcc
  * tGravityAcc
  * tBodyAccJerk
  * tBodyGyro
  * tBodyGyroJerk
  * tBodyAccMag
  * tGravityAccMag
  * tBodyAccJerkMag
  * tBodyGyroMag
  * tBodyGyroJerkMag
  * fBodyAcc
  * fBodyAccJerk
  * fBodyGyro
  * fBodyAccMag
  * fBodyAccJerkMag
  * fBodyGyroMag
  * fBodyGyroJerkMag

The set **estimated variables** from these signals are: 

  * mean - Mean value
  * std - Standard deviation

Additional vectors obtained by averaging the **signals** in a signal window sample. These are used on the angle() variable:

  * gravityMean
  * tBodyAccMean
  * tBodyAccJerkMean
  * tBodyGyroMean
  * tBodyGyroJerkMean

Additional notes regarding feature selction from the features_info.txt document of the Human Activity Recognition Using Smartphones Data Set:

  > The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
  
  > Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
  
  > Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

