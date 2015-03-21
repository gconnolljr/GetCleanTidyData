#Codebook
## avgmeasures.txt

VariableName:activity  
Format:character  
Description:The type of Activity performed by participants  
ValueRange: WALKING|WALKING_UPSTAIRS|WALKING_DOWNSTAIRS|SITTING|STANDING|LAYING  

VariableName: subject  
Format: integer  
Description: An unique ID number for each participant  
ValueRange: 1-30  

All remaining variables are numeric and are the calculated average value for all recorded measurements of "mean()" and "std()" found in the input data set. For variable names with the substring "Acc", these represent measurements by an accelerometer of acceleration. For variable names with the subsstring "Gyro", these represent measurements by a gyroscope of angular velocity. Where the variable name ends with "-X", "-Y" or "-Z", it describes motion in 1 of 3 possible axes.The following is a list of all remaining variable names:

tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyAccMag-mean()  
tGravityAccMag-mean()  
tBodyAccJerkMag-mean()  
tBodyGyroMag-mean()  
tBodyGyroJerkMag-mean()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyAccMag-mean()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroJerkMag-mean()  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-std()  
tGravityAccMag-std()  
tBodyAccJerkMag-std()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-std()  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyAccMag-std()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroJerkMag-std()  

