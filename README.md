
# Getting and cleaning data project

## Raw Data.


moose<-tapply(RawData[,3],list(RawData$activity,RawData$subject),mean)
