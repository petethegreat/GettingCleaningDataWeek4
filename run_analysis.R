main<-function()
{
	# load the raw data
	rawData<<-loadRawData()
	# clean this - give the columns descriptive names,
	# remove unwanted columns (those that are not a mean or standard deviation measurement)
	cleanedData<<-cleanData(rawData)
    # take the mean of the columns of interest, grouped by activity and subject
    tidyData<<-aggregate(cleaned[,3:68],by=cleaned[,c('subject','activity')],FUN=mean)

	
	
}

cleanData<-function(theRawData)
{
	#
	features<-names(theRawData)
	# find which columns we want to keep based on their names
	# get (names of) variables corresponding to measurement means
	meanNames<-grep('mean()',features,fixed=TRUE,value=TRUE)
	# get (names of) variables corresponding to standard deviation of measurements
	stdNames<-grep('std()',features,fixed=TRUE,value=TRUE)
	#note - meanNames omits variables that are mean frequencies. This is intentional, and discussed in README.md
	
	
	
	
	#want output format like (for example) MeanBodyAccelerationXcomponentTimeSeriesMean
	# remove the '-mean()'
	descMeanNames<-gsub('-mean()','',meanNames,fixed=TRUE) 
	# replace "-X" with "XComponent"
	descMeanNames<-gsub('-([XYZ])$','\\1Component',descMeanNames) 
	# If something begins with t, strip the initial t and append "TimeSeriesMean"
	descMeanNames<-gsub('^t(.*)','\\1TimeSeriesMean',descMeanNames) 
	# If something begins with t, strip the initial t and append "FrequencyDomainMean"
	descMeanNames<-gsub('^f(.*)','\\1FrequencyDomainMean',descMeanNames)
	# replace "GyroJerk" with AngularJerk - rate of change of angular velocity 
	# (why is this not angular acceleration? using "Jerk" instead of acceleration for consistency, 
	# but I think this *should* be acceleration. The readme in the raw dataset says that the
	# gyro measures angular velocity. If this is differentiated once, it should give angular 
	# acceleration, not angular jerk). 
	descMeanNames<-gsub('GyroJerk','AngularJerk',descMeanNames)
	# Any gyros remaining in names at this stage should be angular velocities, not jerk/acceleration
	descMeanNames<-gsub('Gyro','AngularVelocity',descMeanNames)
	
		
	descMeanNames<-gsub('Acc','Acceleration',descMeanNames,fixed=TRUE)
	descMeanNames<-gsub('Mag','Magnitude',descMeanNames,fixed=TRUE)
	descMeanNames<-gsub('BodyBody','Body',descMeanNames,fixed=TRUE)
	
	descStdNames<-gsub('-std()','',stdNames,fixed=TRUE)
    descStdNames<-gsub('-([XYZ])$','\\1Component',descStdNames) 
    descStdNames<-gsub('^t(.*)','\\1TimeSeriesStandardDeviation',descStdNames)
    descStdNames<-gsub('^f(.*)','\\1FrequencyDomainStandardDeviation',descStdNames)
    # descMeanNames<-gsub('^f','MeanFrequencyDomain',descMeanNames)
    descStdNames<-gsub('GyroJerk','AngularJerk',descStdNames)
    descStdNames<-gsub('Gyro','AngularVelocity',descStdNames)
    
    descStdNames<-gsub('Acc','Acceleration',descStdNames,fixed=TRUE)
    descStdNames<-gsub('Mag','Magnitude',descStdNames,fixed=TRUE)
    descStdNames<-gsub('BodyBody','Body',descStdNames,fixed=TRUE)
	
	slimmed<-theRawData[,c('subject','activity',meanNames,stdNames)]
    names(slimmed)<-c('subject','activity',descMeanNames,descStdNames)

    return(slimmed)
	
	
	
	
	# count 33 means and 33 stds - that's 66 variables of interest.
	# also want activity and subject - thats 68 variables in total.
	# meanFreq - mean frequency of the measurement. This is (I think) something we don't want.
	
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
    Dataset$activity<-factor(Dataset$activity,labels=c('walking','climbing stairs','descending stairs','sitting','standing up','laying down'))

	Dataset
		
}

main()
