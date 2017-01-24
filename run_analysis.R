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
