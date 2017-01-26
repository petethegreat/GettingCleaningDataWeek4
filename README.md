
# Getting and cleaning data project

## Raw Data.

high level overview, what things are what, why I chose to do some things certain ways, how these satisfy the criteria.

Readme explains how scripts work, how things are connected
only one script (run analysis), several functions



moose<-tapply(RawData[,3],list(RawData$activity,RawData$subject),mean)
moose<-aggregate(cleaned[,3:68],by=cleaned[,c('subject','activity')],FUN=mean)
