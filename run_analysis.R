##Read in necessary files
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

#0. Create vector of Column Names and clean up formatting from the "features.txt" file.
##Carried out this step first to ensure that when the test and training DFs were combined, 
  ## the columns were appropriately matched.
ColumnNames <- c("subject", "activity", "group", as.vector(features$V2))
ColumnNames <- gsub("\\()", "",ColumnNames)
ColumnNames <- gsub("\\(", ".",ColumnNames)
ColumnNames <- gsub("\\)", "",ColumnNames)
ColumnNames <- gsub("-", ".",ColumnNames)
ColumnNames <- gsub(",", "-",ColumnNames)

#1. Merges the training and the test sets to create one data set.

#Combine the subject number, activity, and data for the test group. Then edit the column names.
TestDF <- cbind(subject_test, y_test, c("test"), X_test)
colnames(TestDF) <- ColumnNames

#Combine the subject number, activity, and data for the training group. Then edit the column names.
TrainDF <- cbind(subject_train, y_train, c("train"), X_train)
colnames(TrainDF) <- ColumnNames

#Combine the Test and Training data frames
CohortDF <- rbind(TestDF, TrainDF)
                  
#2. Extracts only the measurements on the mean and standard deviation for each measurement. For this
  ##subset I selected to use all columns for which the title contained "mean" or "std".
ColumnNamesShort <- grepl("mean", ColumnNames) | grepl("std", ColumnNames) 
ColsShort <-ColumnNames[ColumnNamesShort]
CohortDFShort <- subset(CohortDF, select = c("subject", "activity", ColsShort))

#3. Uses descriptive activity names to name the activities in the data set
CohortDFShort$activity <- activity_labels$V2[CohortDFShort$activity]

#4. Appropriately labels the data set with descriptive variable names. 
##This step was carried out at the beginning.

#5. From the data set in step 4, creates a second, independent tidy data set with the average 
    #of each variable for each activity and each subject.
AveragesDF <-aggregate(subset(CohortDFShort, select = c(ColsShort)), by = list(CohortDFShort$activity, CohortDFShort$subject), FUN = mean)
AvgColNames <- colnames(AveragesDF)
AvgColNames <- AvgColNames[3:81]
colnames(AveragesDF) <- c("activity", "subject", paste0("avg_", AvgColNames))
write.table(AveragesDF, "Averages.txt", row.names = FALSE)