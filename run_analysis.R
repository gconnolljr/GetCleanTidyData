

# runanalysis.R takes as input several data files from the UCI HAR Dataset that are partitioned into "training" and "test" data sets.


# Step 1: Merges the training and the test sets to create one data set.


#read in all train data files
traindata<-read.table("./train/X_train.txt")
trainsubject<-read.table("./train/subject_train.txt")
trainactivity<-read.table("./train/y_train.txt")

#read in all test data files
testdata<-read.table("./test/X_test.txt")
testsubject<-read.table("./test/subject_test.txt")
testactivity<-read.table("./test/y_test.txt")

# Add cols for Subject and Activity to train data
# First transform trainactivity to use descriptive values from activity_labels,
# as required in Step 3
actlabels<-read.table("activity_labels.txt")
actvector<-as.character(actlabels$V2)

for (j in 1:6){
  for (i in 1:nrow(trainactivity)) {
    if (trainactivity[i,1]==j) {
      trainactivity[i,1]= actvector[j]
    }
  }
}

# change column names in trainactivity and trainsubject to be descriptive
colnames(trainactivity)<-"activity"
colnames(trainsubject)<-"subject"

# then cbind trainactivity and trainsubject to traindata
x<-cbind(traindata,trainactivity)
x<-cbind(x,trainsubject)

# Add cols for Subject and Activity to test data
# First transform testactivity to use descriptive values from activity_labels
# as required in Step 3
actlabels<-read.table("activity_labels.txt")
actvector<-as.character(actlabels$V2)

for (j in 1:6){
  for (i in 1:nrow(testactivity)) {
    if (testactivity[i,1]==j) {
      testactivity[i,1]= actvector[j]
    }
  }
}

# change column names in testactivity and testsubject to be descriptive
colnames(testactivity)<-"activity"
colnames(testsubject)<-"subject"

# then cbind testactivty and testsubject to testdata
y<-cbind(testdata,testactivity)
y<-cbind(y,testsubject)

# Now rbind traindata and testdata to create the "alldata" dataframe
alldata<-rbind(x,y) #combine training and test data


# Step 2: Extract only measurements on  mean and standard deviation for each measurement.
features<-read.table("features.txt")
a<-as.character(features$V2) # creates char vector of all feature names
x<-grep("mean\\(\\)",a) # this grep() gets only the specific string "mean()" from col names in features dataframe
y<-grep("std\\(\\)",a) # this grep() gets only the specific string "std()" from col names in features dataframe
z<-c(x,y,562,563) #combine x and y to create index for subsetting cols of interest from alldata. 562 and 563 are the column index values for "activity" and "subject".

alldata2<-alldata[,z] # reduce dimensions of alldata to just cols for "mean()", "std()"
dim(alldata2) # 10299 x 79

#now alldata2 has just the columns for mean and std, in addition to activity and subject, for all test and train data

#Step 4: We need to label the columns in alldata2 to be descriptive
# the last two columns are already descriptive.
names(alldata2)

z2<-c(x,y)
b<-features[z2,] # select rows by col index vector z to extract only "mean" and "std" columns
#now we have a dataframe b with two cols. the column we want is factor $V2 
c<-as.character(b$V2) # c is char vector with descriptive names for mean, std features
colnames(alldata2)<-c
colnames(alldata2)[67]<-"activity"
colnames(alldata2)[68]<-"subject"
#now we have all train and test data, includin activity and subject, in a dataframe with descriptive col names
# Steps 1-4 are complete

#Step 5: From alldata2, create a second, independent tidy data set with the average of each variable for each activity and each subject.
library("reshape2")
cols<-colnames(alldata2)
cols<-cols[1:66] #select only the columns that provide numeric measures for the melt() function
datamelt <- melt(alldata2,id=c("activity","subject"),measure.vars=cols)
avgmeasures<-dcast(datamelt,activity+subject~variable, mean) # cast the melted dataframe to generate the average values for all measures, grouped by activity and subject

#final step is to write avgmeasures dataframe to a file
write.table(avgmeasures,file="avgmeasures.txt",row.name=FALSE)







