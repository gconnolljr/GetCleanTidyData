#README

This README file describes the files in this repo.

The runanalysis.R script takes as its input the UCI HAR Dataset, and writes to output file "avgmeasures.txt".

The Codebook describes the dataset found in file "avgmeasures.txt".

The avgmeasures.txt file is the output genreated by runanalysis.R.

runanalysis.R assumes the input data files that comprise the UCI HAR Dataset, and its associated subdirectories, are in your R/RStudio working directory.

The UCI HAR Dataset comes with a README file explaining how the various data files are related to one another, and should be reviewed prior to a read through of runanalysis.R.

runanalysis.R does the following:  
<li> Merges the training and the test data sets from UCI HAR Dataset to create one dataframe that includes both the "Activity" and the "Subject" variables for each record/measurement.  
<li> It extracts only the measurement data associated with the calculated mean and standard deviation for each measurement. The selection of these specific measurments is based on a "grep()" of all "feature" column names that contain the exact string "mean()" or "std()".  
<li> Replaces numeric activity codes with their associated descriptive names based on the data provided in the "activity_labels.txt" input file.  
<li> Labels the column names in the output data set written to "avgmeasures.txt" using the descriptive labels found in the "features.txt" input file.  

runanalysis.R uses the "melt()" and "dcast()" functions, and requires that the "reshape.R" package is installed.

runanalysis.R is heavily commented, and should be read for specific guidance on all transformations performed on input data.

The output file "avgmeasures.txt" describes the average values for all measurements of "mean()" and "std()" found in the UCI HAR Dataset training and test data, organized by the associated "Activity" and "Subject", where Subject is the numeric code assigned to each of the 30 partipants "Subjects", and "Activity" describes the six (6) different types of activity that were monitored and measured.

