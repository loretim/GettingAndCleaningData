Getting and Cleaning Data Course Project CodeBook

This file describes the variables, the data, and any transformations or work that I have performed to clean up the data.

The site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The run_analysis.R script performs the following steps to clean the data:
Read  X_train.txt, 
      y_train.txt 
      subject_train.txt 
and store them in 
   x_train, 
   y_train  
   subject_train variables
Read  X_test.txt, 
      y_test.txt
      subject_test.txt 
and store them in 
      x_test, 
      y_test
      subject_test variables
Concatenate x_test to x_train to generate a 10299x561 data frame, x_data; 
concatenate y_test to y_train to generate a 10299x1 data frame, y_data; 
concatenate subject_test to subject_train to generate a 10299x1 data frame, subject_data.
Read the features.txt file and store the data in a variable called 
      features. 
We only extract the measurements on the mean and standard deviation. 
This results in a 66 indices list. 
We get a subset of x_data with the 66 corresponding columns.
Clean the column names of the subset. 


Read the activity_labels.txt file  and store the data in a variable called activities.
Clean the activity names in the second column of activities. 


Combine the subject_data, y_data and x_data by column to get a new cleaned 10299x68 data frame, all_data. 

Properly name the first two columns, "subject" and "activity". 

Finally, generate a second independent tidy data set with the average of each measurement for each activity and each subject. 

So, after initializing the result data frame and performing the two for-loops, we get a 180x68 data frame.
Write the result out to "Result.txt" file.

Variables

    subjectId: 1 to 30 each representing a participant in the study
    activity: the activity that the subject was doing at the time of the measurement
    tBodyAcc-mean-X
    tBodyAcc-mean-Y
    tBodyAcc-mean-Z
    tBodyAcc-std-X
    tBodyAcc-std-Y
    tBodyAcc-std-Z
    tGravityAcc-mean-X
    tGravityAcc-mean-Y
    tGravityAcc-mean-Z
    tGravityAcc-std-X
    tGravityAcc-std-Y
    tGravityAcc-std-Z
    tBodyAccJerk-mean-X
    tBodyAccJerk-mean-Y
    tBodyAccJerk-mean-Z
    tBodyAccJerk-std-X
    tBodyAccJerk-std-Y
    tBodyAccJerk-std-Z
    tBodyGyro-mean-X
    tBodyGyro-mean-Y
    tBodyGyro-mean-Z
    tBodyGyro-std-X
    tBodyGyro-std-Y
    tBodyGyro-std-Z
    tBodyGyroJerk-mean-X
    tBodyGyroJerk-mean-Y
    tBodyGyroJerk-mean-Z
    tBodyGyroJerk-std-X
    tBodyGyroJerk-std-Y
    tBodyGyroJerk-std-Z
    tBodyAccMag-mean
    tBodyAccMag-std
    tGravityAccMag-mean
    tGravityAccMag-std
    tBodyAccJerkMag-mean
    tBodyAccJerkMag-std
    tBodyGyroMag-mean
    tBodyGyroMag-std
    tBodyGyroJerkMag-mean
    tBodyGyroJerkMag-std
    fBodyAcc-mean-X
    fBodyAcc-mean-Y
    fBodyAcc-mean-Z
    fBodyAcc-std-X
    fBodyAcc-std-Y
    fBodyAcc-std-Z
    fBodyAccJerk-mean-X
    fBodyAccJerk-mean-Y
    fBodyAccJerk-mean-Z
    fBodyAccJerk-std-X
    fBodyAccJerk-std-Y
    fBodyAccJerk-std-Z
    fBodyGyro-mean-X
    fBodyGyro-mean-Y
    fBodyGyro-mean-Z
    fBodyGyro-std-X
    fBodyGyro-std-Y
    fBodyGyro-std-Z
    fBodyAccMag-mean
    fBodyAccMag-std
    fBodyBodyAccJerkMag-mean
    fBodyBodyAccJerkMag-std
    fBodyBodyGyroMag-mean
    fBodyBodyGyroMag-std
    fBodyBodyGyroJerkMag-mean
    fBodyBodyGyroJerkMag-std
