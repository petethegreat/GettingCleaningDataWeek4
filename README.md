
# Getting and cleaning data project

## Raw Data.
The raw data for this project is taken from the UCI machine learning [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset may be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

##Files
This project consists of the following files:
- README.md - this file. A dscription of the project.
- CodeBook.md - describes the tidy dataset
- run_analysis.R - cleans the raw data and produces the tidy dataset
- tidy.csv - the final tidy dataset, written in csv format.

## Analysis
assumes that UCI dataset is located in a directory call "UCI HAR Dataset", and that run\_analysis.R is located in the sa
Assumes that the UCI dataset is unzipped in the same directory that contains run\_analysis.R . That is, if run\_analysis.R is located at "/path/run_analysis.R", The HAR data is located in "/path/UCI HAR Dataset/".

The script consists of three functions, which are invoked in the following order.
- main() - calls the other two functions
- loadRawData() - loads data from the test/training/X/Y files. These are merged into a single dataframe. The column/variable names are read from features.txt.
- cleanData(rawData) - takes the raw dataframe as input, and creates a cleaned dataframe that only contains the columns of interest (means and standard deviations). The variable names are also modified to be more descriptive.
Following this, main calls the (builtin) aggregate function summarise the cleaned dataframe, creating the final tidy dataset. main() assigns the raw, cleaned, and tidy dataframes to variables called "rawData", "cleanedData", and "tidyData", respectively. These variables should be present in the R environment from which run\_analysis.R is sourced.

## Additional Notes
- variable names - 
raw data - x rows, y columns
tidy data - wide format X rows, N columns
variables - excluded meanfreq, as this is the mean of the frequencies obtained from a measurement, rather than a mean of a measurement. This was how I interpreted the assignment.





moose<-tapply(RawData[,3],list(RawData$activity,RawData$subject),mean)
moose<-aggregate(cleaned[,3:68],by=cleaned[,c('subject','activity')],FUN=mean)
