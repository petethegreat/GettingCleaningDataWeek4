

loadRawData<-function()
{
	# load all of the raw data into one big dataset.
	#column names for most things
	print('loading data')
	
	#features<-readLines('./UCI HAR Dataset/features.txt')
	features<-read.table('./UCI HAR Dataset/features.txt',row.names=1,sep=' ',as.is=c(TRUE,TRUE))
	print('read features')
	
	
	# train measurements
	print('reading train measurements')
	trainMeasures<-read.table('./UCI HAR Dataset/train/X_train.txt')#,col.names=features[[1]])
	# test measurements
	print('reading test measurements')
	testMeasures<-read.table('./UCI HAR Dataset/test/X_test.txt')#,col.names=features[[1]])
		
	# do train then test for all things, otherwise oredering will get screwed up
	print('merging train and test measurements')
	totalMeasures<-rbind(trainMeasures,testMeasures)
	
	
	# subject ids
	print('reading train subjects')
	trainSubjects<-readLines('./UCI HAR Dataset/train/subject_train.txt')
	print('reading test subjects')
	testSubjects<-readLines('./UCI HAR Dataset/test/subject_test.txt')
	# merge subjects
	print('merging train and test subjects')
	totalSubjects<-rbind(trainSubjects,testSubjects)
	
	# Activities
	print('reading train activities')
	trainActivity<-readLines('./UCI HAR Dataset/train/y_train.txt')
	print('reading test activities')
	testActivity<-readLines('./UCI HAR Dataset/test/y_test.txt')
	
	print('merging train and test activities')
	totalActivity<-rbind(trainActivity,testActivity)
	
	# have all the columns now. Merge rows into one big dataframe
	Dataset<-cbind(totalSubject,totalActivity,totalMeasures)
	Dataset
	
	
	
	
	
	# train activities
	
	
	
	
	
	
	
}
