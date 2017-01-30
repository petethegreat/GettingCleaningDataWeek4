
# Getting and cleaning data project

## Raw Data.
The raw data for this project is taken from the UCI machine learning [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset may be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

##Files
This project consists of the following files:
- README.md - this file. A dscription of the project.
- CodeBook.md - describes the tidy dataset
- run_analysis.R - cleans the raw data and produces the tidy dataset
- tidy.txt - the final tidy dataset, written in plain text format.

## Analysis
assumes that UCI dataset is located in a directory call "UCI HAR Dataset", and that run\_analysis.R is located in the sa
Assumes that the UCI dataset is unzipped in the same directory that contains run\_analysis.R . That is, if run\_analysis.R is located at "/path/run_analysis.R", The HAR data is located in "/path/UCI HAR Dataset/".

The script consists of three functions, described below

### loadRawData 
This function loads the raw data into one big dataframe. Reads "features.txt" to get the column names, then reads the measurements from "X_train.txt" and "X_test.txt" into seperate data frames. These are then merged (by row using rbind, train first then test) into a single dataframe called 'totalMeasures'. The subject information is then read from "subject_train.txt" and "subject_test.txt", and this information is merged into a single dataframe 'totalSubjects' using rbind, train first then test. Finally the activity information is read from "y_train.txt" and "y_test.txt" and merged into a single dataframe 'totalSubjects' using rbind. These three dataframes are then merged by column using `cbind(totalSubjects,totalActivity,totalMeasures)`, and the column names are assigned.
### cleanData
This function takes the dataframe created by loadRawData as input, and produces a clean version. The `grep()` function is used to find column names that contain either '-mean()' and column names that contain '-std()', as these correspond to variables representing means or standard deviations, respectively. Note that columns containing '-meanFreq' are intentionally ommitted, as these variables represent an average frequency present in the data rather than the mean of a measurement. This is how I interpreted the instructions in the assignment, others may interpret things differently. The variable names are transformed from the names listed in features.txt to things that are 'more descriptive' using a series of gsub statements. A slimmed dataframe is formed by taking only the columns of interest (the means and standandard deviations, as well as subject and activity), and the descriptive names are assigned to the columns of this dataframe.
### main
This function is invoked when the script is sourced. It first calls loadRawData, and assigns the returned dataframe (the raw data) to the variable "rawData" in the parent environment. It then passes rawData to the functon cleanData, and assigns the returned dataframe to the variable 'cleanedData'. Finally, it uses the `aggregate` function to split the cleaned data based on subject and activity, and compute the mean of each column within each seperate subject/activity group. The result is the final tidy dataset, which is stored in a dataframe named 'tidyData' in the environment in which run_analysis.R is sourced.


## Additional Notes
- variable names -  The week 4 lecture on editing text variables states that variable names should be descriptive, not contain spaces or hyphens, and _where possible_, be all lower case. The variable names in the tidy dataset do not contain spaces or hyphens and are (I think) descriptive, but are also quite long. In order to improve readability the first letter of each word after the first has been capitalised. I think that, in this case, it is neccasary to include some uppercase letters in the variable names, otherwise it would be difficult to make sense of long lowercase strings that contained no spaces.
- Variables - variables in the raw dataset with names containing '-meanFreq' are intentionally ommitted from the clean/tidy datasets, as these variables represent an average frequency present in the data rather than the mean of a measurement. This is how I interpreted the instructions in the assignment.
- The dataframe containing the raw data has 10299 rows and 563 columns.
- The dataframe containing the final, tidy data has 180 rows and 68 columns.



##References
- Codebook layout based on https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41 
- David Hood's [Getting and cleaning the assignment post](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/)


