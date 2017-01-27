
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

The script consists of three functions, which are invoked in the following order.
- main() - calls loadRawData(), and stores the output as "rawData" in the parent environment (the one from which run_analysis.R was sourced). **MORE HERE**
- loadRawData() - loads data from the test/training/X/Y files. These are merged into a single dataframe. The column/variable names are read from features.txt.
- cleanData(rawData) - takes the raw dataframe as input, and creates a cleaned dataframe that only contains the columns of interest (means and standard deviations). The variable names are also modified to be more descriptive.
Following this, main calls the (builtin) aggregate function summarise the cleaned dataframe, creating the final tidy dataset. main() assigns the raw, cleaned, and tidy dataframes to variables called "rawData", "cleanedData", and "tidyData", respectively. These variables should be present in the R environment from which run\_analysis.R is sourced. 

## Additional Notes
- variable names -  The [week 4 lecture on editing text variables](https://d3c33hcgiwev3.cloudfront.net/_1fc80d73df26808e7cfa2ce160041c60_04_01_editingTextVariables.pdf?Expires=1485648000&Signature=E0jEDAN7iXIzIjmgLSOco05-dGGlRqpbhaGRnqGsR5-3k4A5qs6Hm~6AwK9Ndq0o8VFawvA8wjC2g0IWKIa37lwLe7URHHY2YZq9YdGbcr-HBB3ENCwZBkOdhn7roAq1Mz0TO312Di9dmuy4JaP69b~r1Hmbi~BjqmqMSJ~jhw8_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A) states that variable names should be descriptive, not contain spaces or hyphens, and _where possible_, be all lower case. The variable names in the tidy dataset do not contain spaces or hyphens and are (I think) descriptive, but are also quite long. In order to improve readability the first letter of each word after the first has been capitalised. I thought that this was neccasary, otherwise it would be difficult to make sense of long strings with no spaces that were all lower case.
- variables - excluded meanfreq, as this is the mean of the frequencies obtained from a measurement, rather than a mean of a measurement. This was how I interpreted the assignment.

- raw data - x rows, y columns
- tidy data - wide format X rows, N columns


##References
-- Codebook layout based on https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41 
-- David Hood's [Getting and cleaning the assignment post](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/)


