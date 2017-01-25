main<-function()
{
	# load the raw data
	rawData<<-loadRawData()
	# clean this - give the columns descriptive names,
	# remove unwanted columns (those that are not a mean or standard deviation measurement)
	cleaned<<-cleanData(rawData)
	
	
}

cleanData<-function(theRawData)
{
	#
	features<-names(theRawData)
	meanNames<-grep('mean()',features[[1]],fixed=TRUE,value=TRUE)
	stdNames<-grep('std()',features[[1]],fixed=TRUE,value=TRUE)
	
	descMeanNames<-gsub('-mean()','',meanNames,fixed=TRUE)
	descMeanNames<-gsub('^t','TimeSeriesMean',descMeanNames)
	descMeanNames<-gsub('Acc','Acceleration',descMeanNames,fixed=TRUE)
	descMeanNames<-gsub('-([XYZ])$','\0Component',descMeanNames) - borked
	
	
	
	
	# count 33 means and 33 stds - that's 66 variables of interest.
	# also want activity and subject - thats 68 variables in total.
	# meanFreq - mean frequency of the measurement. This is (I think) something we don't want.
	# means:
	# tBodyAcc-mean()-X
	# tBodyAcc-mean()-Y
	# tBodyAcc-mean()-Z
	# tGravityAcc-mean()-X
	# tGravityAcc-mean()-Y
	# tGravityAcc-mean()-Z
	# tBodyAccJerk-mean()-X
	# tBodyAccJerk-mean()-Y
	# tBodyAccJerk-mean()-Z
	# tBodyGyro-mean()-X
	# tBodyGyro-mean()-Y
	# tBodyGyro-mean()-Z
	# tBodyGyroJerk-mean()-X
	# tBodyGyroJerk-mean()-Y
	# tBodyGyroJerk-mean()-Z
	# tBodyAccMag-mean()
	# tGravityAccMag-mean()
	# tBodyAccJerkMag-mean()
	# tBodyGyroMag-mean()
	# tBodyGyroJerkMag-mean()
	# fBodyAcc-mean()-X
	# fBodyAcc-mean()-Y
	# fBodyAcc-mean()-Z
	# fBodyAccJerk-mean()-X
	# fBodyAccJerk-mean()-Y
	# fBodyAccJerk-mean()-Z
	# fBodyGyro-mean()-X
	# fBodyGyro-mean()-Y
	# fBodyGyro-mean()-Z
	# fBodyAccMag-mean()
	# fBodyBodyAccJerkMag-mean()
	# fBodyBodyGyroMag-mean()
	# fBodyBodyGyroJerkMag-mean()
	
	# standard deviations:
	# tBodyAcc-std()-X
	# tBodyAcc-std()-Y
	# tBodyAcc-std()-Z
	# tGravityAcc-std()-X
	# tGravityAcc-std()-Y
	# tGravityAcc-std()-Z
	# tBodyAccJerk-std()-X
	# tBodyAccJerk-std()-Y
	# tBodyAccJerk-std()-Z
	# tBodyGyro-std()-X
	# tBodyGyro-std()-Y
	# tBodyGyro-std()-Z
	# tBodyGyroJerk-std()-X
	# tBodyGyroJerk-std()-Y
	# tBodyGyroJerk-std()-Z
	# tBodyAccMag-std()
	# tGravityAccMag-std()
	# tBodyAccJerkMag-std()
	# tBodyGyroMag-std()
	# tBodyGyroJerkMag-std()
	# fBodyAcc-std()-X
	# fBodyAcc-std()-Y
	# fBodyAcc-std()-Z
	# fBodyAccJerk-std()-X
	# fBodyAccJerk-std()-Y
	# fBodyAccJerk-std()-Z
	# fBodyGyro-std()-X
	# fBodyGyro-std()-Y
	# fBodyGyro-std()-Z
	# fBodyAccMag-std()
	# fBodyBodyAccJerkMag-std()
	# fBodyBodyGyroMag-std()
	# fBodyBodyGyroJerkMag-std()
	
	
	
	return(theRawData)
	
}
	
loadRawData<-function()
{
	# load all of the raw data into one big dataset.
	#column names for most things
	message('loading data')
	
	#features<-readLines('./UCI HAR Dataset/features.txt')
	features<-read.table('./UCI HAR Dataset/features.txt',row.names=1,sep=' ',as.is=c(TRUE,TRUE))
	message('read features')
	
	
	# train measurements
	message('reading train measurements')
	trainMeasures<-read.table('./UCI HAR Dataset/train/X_train.txt')#,col.names=features[[1]])
	# test measurements
	message('reading test measurements')
	testMeasures<-read.table('./UCI HAR Dataset/test/X_test.txt')#,col.names=features[[1]])
		
	# do train then test for all things, otherwise oredering will get screwed up
	message('merging train and test measurements')
	totalMeasures<-rbind(trainMeasures,testMeasures)
    # delete the individual test and train to free memory
	rm(trainMeasures,testMeasures)
	
	# subject ids
	message('reading train subjects')
	trainSubjects<-read.table('./UCI HAR Dataset/train/subject_train.txt')
	message('reading test subjects')
	testSubjects<-read.table('./UCI HAR Dataset/test/subject_test.txt')
	# merge subjects
	message('merging train and test subjects')
	totalSubjects<-rbind(trainSubjects,testSubjects)
    # free memory
    rm(trainSubjects,testSubjects)
	
	# Activities
	message('reading train activities')
	trainActivity<-read.table('./UCI HAR Dataset/train/y_train.txt')
	message('reading test activities')
	testActivity<-read.table('./UCI HAR Dataset/test/y_test.txt')
	
	message('merging train and test activities')
	totalActivity<-rbind(trainActivity,testActivity)
	# free memory
    rm(trainActivity,testActivity)
	
	# have all the columns now. Merge rows into one big dataframe
	Dataset<-cbind(totalSubjects,totalActivity,totalMeasures)
    # total dataframes will go out of scope and be freed shortly, so no need to rm them (done reading data in)
    # add column names to data frame, 
	names(Dataset)<-c('subject','activity',features[[1]])
	Dataset
		
}

main()
