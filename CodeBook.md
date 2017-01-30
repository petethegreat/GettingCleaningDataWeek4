# UCI HAR tidied data


## Project Description
The aim of this project is to produce a tidied dataset from the UCI Human activities research dataset. The tidied dataset contains averages of the mean and standard deviation variables in the raw data, grouped by subject (study participant) and the physical activity being undertaken (sitting, climbing stairs, etc.).

##Study design and data processing

###Collection of the raw data
The raw data was collected using the sensors on a Samsung Galaxy S II phone. Sensor data was recorded while study participants where engaged in six types of physical activity, with thhe phone clipped to their waist. The accelerometer and gyroscope on the phone were used to measure acceleration and angular velocity. These measurements were processed to seperate the gravitaational component from the rest of the body's movement. Further details may be found on the [HAR website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), or in the README.txt and features_info.txt files of contained in the [dataset archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Note that in the following 'raw data' refers to the feature,subject and activity variables contained in the UCI HAR dataset, NOT the time series data from the smartphone accelerometer/gyro. The accelerometer/gyroscope data is also contained in the UCI dataset, but was not used in this analysis.

###Notes on the original (raw) data 
Some additional notes (if avaialble, otherwise you can leave this section out).

##Creating the tidy datafile

###Guide to create the tidy data file
1. Download the UCI HAR dataset, which can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Unzip the compressed dataset file. The run\_analysis.R script should be located in the same place as the "UCI HAR Dataset" directory.
3. Start R. Source the script using : `source("run_analysis.R")`
4. The tidy dataset will be stored in a dataframe called "tidyData". This can be written to file using the command  `write.table(tidyData,file="./tidyFileOutput.txt",row.names=FALSE)`

###Cleaning of the data
The cleaning script `run_analysis.R` first takes all of the raw data and consolidates all of the information (from both the testing and training sets) into a single dataframe. It then creates a cleaned dataframe by selecting only the variables of interest (mean and standard deviation quantities) from the raw data. Variable names in the cleaned dataframe are modified to be more descriptive. Finally, the observations are grouped by subject and activity, and the mean for each variable of interest is computed within each group. A more detailed description of the cleaning/tidying process can be found in the [README.md](./README.md)

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

### subject
- subject id correspoinding to one of the participants in the UCI HAR study.
- integer class
- values lie in the range [1,30]


### activity
- physical activity being undertaken by the participant during data collection.
- factor with 6 levels: "climbing stairs", "descending stairs", "laying down", "sitting", "standing up", "walking".  




### BodyAccelerationXComponentTimeSeriesMean
- mean of the tBodyAcc-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity.
- numeric class
- values lie in the range `[0.222,0.301]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationXComponentTimeSeriesMean
    -BodyAcceleration - the body component of the acceleration
	-XComponent - in the _x_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.


### BodyAccelerationYComponentTimeSeriesMean
- mean of the tBodyAcc-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.041,-0.001]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationYComponentTimeSeriesMean 
    -BodyAcceleration - the body component of the acceleration
	-YComponent - in the _y_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAccelerationZComponentTimeSeriesMean
- mean of the tBodyAcc-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.153,-0.075]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationZComponentTimeSeriesMean 
    -BodyAcceleration - the body component of the acceleration
	-ZComponent - in the _z_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### GravityAccelerationXComponentTimeSeriesMean
- mean of the tGravityAcc-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.680,0.975]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationXComponentTimeSeriesMean 
    -GravityAcceleration - the gravitational component of the acceleration
	-XComponent - in the _x_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### GravityAccelerationYComponentTimeSeriesMean
- mean of the tGravityAcc-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.480,0.957]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationYComponentTimeSeriesMean 
    -GravityAcceleration - the gravitational component of the acceleration
	-YComponent - in the _y_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.


### GravityAccelerationZComponentTimeSeriesMean
- mean of the tGravityAcc-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.495,0.958]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationZComponentTimeSeriesMean 
    -GravityAcceleration - the gravitational component of the acceleration
	-ZComponent - in the _z_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.


### BodyAccelerationJerkXComponentTimeSeriesMean
- mean of the tBodyAccJerk-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[0.043,0.130]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkXComponentTimeSeriesMean 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-XComponent - in the _x_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAccelerationJerkYComponentTimeSeriesMean
- mean of the tBodyAccJerk-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.039,0.057]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkYComponentTimeSeriesMean 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-YComponent - in the _y_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.



### BodyAccelerationJerkZComponentTimeSeriesMean
- mean of the tBodyAccJerk-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.067,0.038]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkZComponentTimeSeriesMean
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-ZComponent - in the _z_ direction
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.
 


### BodyAngularVelocityXComponentTimeSeriesMean
- mean of the tBodyGyro-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.206,0.193]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityXComponentTimeSeriesMean 
    -BodyAngularVelocity - the body component of the angular velocity
	-XComponent - about the _x_ axis
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAngularVelocityYComponentTimeSeriesMean
- mean of the tBodyGyro-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.204,0.027]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityYComponentTimeSeriesMean 
    -BodyAngularVelocity - the body component of the angular velocity
	-YComponent - about the _y_ axis
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.


### BodyAngularVelocityZComponentTimeSeriesMean
- mean of the tBodyGyro-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.072,0.179]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityZComponentTimeSeriesMean 
    -BodyAngularVelocity - the body component of the angular velocity
	-ZComponent - about the _z_ axis
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.


### BodyAngularJerkXComponentTimeSeriesMean
- mean of the tBodyGyroJerk-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.157,-0.022]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkXComponentTimeSeriesMean 
    -BodyAngularJerk - the rate of change of the body component of the angular velocity
	-XComponent - about the _x_ axis
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAngularJerkYComponentTimeSeriesMean
- mean of the tBodyGyroJerk-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.077,-0.013]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkYComponentTimeSeriesMean 
    -BodyAngularJerk - the rate of change of the body component of the angular velocity
	-YComponent - about the _y_ axis
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAngularJerkZComponentTimeSeriesMean
- mean of the tBodyGyroJerk-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.092,-0.007]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkZComponentTimeSeriesMean 
    -BodyAngularJerk - the rate of change of the body component of the angular velocity
	-ZComponent - about the _z_ axis
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAccelerationMagnitudeTimeSeriesMean
- mean of the tBodyAccMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.645]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationMagnitudeTimeSeriesMean 
    -BodyAcceleration - the body component of the acceleration
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### GravityAccelerationMagnitudeTimeSeriesMean
- mean of the tGravityAccMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.645]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationMagnitudeTimeSeriesMean 
    -GravityAcceleration - the gravitational component of the acceleration
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAccelerationJerkMagnitudeTimeSeriesMean
- mean of the tBodyAccJerkMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.993,0.434]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkMagnitudeTimeSeriesMean 
    -BodyAccelerationJerk - the body component of the rate of change of acceleration
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAngularVelocityMagnitudeTimeSeriesMean
- mean of the tBodyGyroMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.981,0.418]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityMagnitudeTimeSeriesMean 
    -BodyAngularVelocity - the body component of the angular velocity
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.

### BodyAngularJerkMagnitudeTimeSeriesMean
- mean of the tBodyGyroJerkMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,0.088]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkMagnitudeTimeSeriesMean 
    -BodyAngularJerk - the body component of the rate of change of angular velocity
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-Mean - the mean was taken.


### BodyAccelerationXComponentFrequencyDomainMean
- mean of the fBodyAcc-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.537]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationXComponentFrequencyDomainMean 
    -BodyAcceleration - the body component of the acceleration
	-XComponent - in the _x_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAccelerationYComponentFrequencyDomainMean
- mean of the fBodyAcc-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.989,0.524]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationYComponentFrequencyDomainMean 
    -BodyAcceleration - the body component of the acceleration
	-YComponent - in the _y_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.


### BodyAccelerationZComponentFrequencyDomainMean
- mean of the fBodyAcc-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.989,0.281]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationZComponentFrequencyDomainMean 
    -BodyAcceleration - the body component of the acceleration
	-ZComponent - in the _z_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.


### BodyAccelerationJerkXComponentFrequencyDomainMean
- mean of the fBodyAccJerk-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.474]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkXComponentFrequencyDomainMean 
    -BodyAccelerationJerk - the body component of the rate of change of acceleration
	-ZComponent - in the _z_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAccelerationJerkYComponentFrequencyDomainMean
- mean of the fBodyAccJerk-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.989,0.277]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkYComponentFrequencyDomainMean 
    -BodyAccelerationJerk - the body component of the rate of change of acceleration
	-YComponent - in the _y_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAccelerationJerkZComponentFrequencyDomainMean
- mean of the fBodyAccJerk-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.992,0.158]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkZComponentFrequencyDomainMean 
    -BodyAccelerationJerk - the body component of the rate of change of acceleration
	-ZComponent - in the _z_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAngularVelocityXComponentFrequencyDomainMean
- mean of the fBodyGyro-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.993,0.475]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityXComponentFrequencyDomainMean 
    -BodyAngularVelocity - the body component of the angular velocity
	-XComponent- about the _x_ axis
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAngularVelocityYComponentFrequencyDomainMean
- mean of the fBodyGyro-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.329]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityYComponentFrequencyDomainMean 
    -BodyAngularVelocity - the body component of the angular velocity
	-YComponent- about the _y_ axis
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAngularVelocityZComponentFrequencyDomainMean
- mean of the fBodyGyro-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.492]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityZComponentFrequencyDomainMean 
    -BodyAngularVelocity - the body component of the angular velocity
	-ZComponent- about the _z_ axis
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAccelerationMagnitudeFrequencyDomainMean
- mean of the fBodyAccMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.987,0.587]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationMagnitudeFrequencyDomainMean 
    -BodyAcceleration - the body component of acceleration
	-Magnitude - the magnitude of this vector
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAccelerationJerkMagnitudeFrequencyDomainMean
- mean of the fBodyBodyAccJerkMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.538]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkMagnitudeFrequencyDomainMean 
    -BodyAccelerationJerk - the body component of the rate of change of acceleration
	-Magnitude - the magnitude of this vector
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAngularVelocityMagnitudeFrequencyDomainMean
- mean of the fBodyBodyGyroMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.987,0.204]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityMagnitudeFrequencyDomainMean 
    -BodyAngularVelocity - the body component of the angular velocity
	-Magnitude - the magnitude of this vector
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAngularJerkMagnitudeFrequencyDomainMean
- mean of the fBodyBodyGyroJerkMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.998,0.147]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkMagnitudeFrequencyDomainMean 
    -BodyAngularJerk - the body component of the rate of change of angular velocity
	-Magnitude - the magnitude of this vector
	-FrequencyDomain - this variable was analysed in the frequency domain 
	-Mean - the mean was taken.

### BodyAccelerationXComponentTimeSeriesStandardDeviation
- mean of the tBodyAcc-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.996,0.627]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationXComponentTimeSeriesStandardDeviation 
    -BodyAcceleration - the body component of the acceleration
	-XComponent - in the _x_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.


### BodyAccelerationYComponentTimeSeriesStandardDeviation
- mean of the tBodyAcc-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.990,0.617]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationYComponentTimeSeriesStandardDeviation 
    -BodyAcceleration - the body component of the acceleration
	-YComponent - in the _y_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationZComponentTimeSeriesStandardDeviation
- mean of the tBodyAcc-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.988,0.609]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationZComponentTimeSeriesStandardDeviation 
    -BodyAcceleration - the body component of the acceleration
	-ZComponent - in the _z_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### GravityAccelerationXComponentTimeSeriesStandardDeviation
- mean of the tGravityAcc-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,-0.830]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationXComponentTimeSeriesStandardDeviation 
    -GravityAcceleration - the gravitaional component of the acceleration
	-XComponent - in the _x_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### GravityAccelerationYComponentTimeSeriesStandardDeviation
- mean of the tGravityAcc-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,-0.644]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationYComponentTimeSeriesStandardDeviation 
    -GravityAcceleration - the gravitaional component of the acceleration
	-YComponent - in the _y_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### GravityAccelerationZComponentTimeSeriesStandardDeviation
- mean of the tGravityAcc-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.991,-0.610]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationZComponentTimeSeriesStandardDeviation 
    -GravityAcceleration - the gravitaional component of the acceleration
	-ZComponent - in the _z_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.


### BodyAccelerationJerkXComponentTimeSeriesStandardDeviation
- mean of the tBodyAccJerk-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.544]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkXComponentTimeSeriesStandardDeviation 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-XComponent - in the _x_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.


### BodyAccelerationJerkYComponentTimeSeriesStandardDeviation
- mean of the tBodyAccJerk-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.990,0.355]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkYComponentTimeSeriesStandardDeviation 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-YComponent - in the _y_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationJerkZComponentTimeSeriesStandardDeviation
- mean of the tBodyAccJerk-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.993,0.031]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkZComponentTimeSeriesStandardDeviation 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-ZComponent - in the _z_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularVelocityXComponentTimeSeriesStandardDeviation
- mean of the tBodyGyro-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.268]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityXComponentTimeSeriesStandardDeviation 
    -BodyAngularVelocity - the body component of the angular velocity
	-XComponent - in the _x_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularVelocityYComponentTimeSeriesStandardDeviation
- mean of the tBodyGyro-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.477]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityYComponentTimeSeriesStandardDeviation 
    -BodyAngularVelocity - the body component of the angular velocity
	-YComponent - in the _y_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularVelocityZComponentTimeSeriesStandardDeviation
- mean of the tBodyGyro-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.565]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityZComponentTimeSeriesStandardDeviation 
    -BodyAngularVelocity - the body component of the angular velocity
	-ZComponent - in the _z_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularJerkXComponentTimeSeriesStandardDeviation
- mean of the tBodyGyroJerk-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,0.179]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkXComponentTimeSeriesStandardDeviation 
    -BodyAngularJerk - the rate of change of the body component of the angular velocity
	-XComponent - in the _x_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularJerkYComponentTimeSeriesStandardDeviation
- mean of the tBodyGyroJerk-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,0.296]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkYComponentTimeSeriesStandardDeviation 
    -BodyAngularJerk - the rate of change of the body component of the angular velocity
	-YComponent - in the _y_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularJerkZComponentTimeSeriesStandardDeviation
- mean of the tBodyGyroJerk-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.193]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkZComponentTimeSeriesStandardDeviation 
    -BodyAngularJerk - the rate of change of the body component of the angular velocity
	-ZComponent - in the _z_ direction
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationMagnitudeTimeSeriesStandardDeviation
- mean of the tBodyAccMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.428]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationMagnitudeTimeSeriesStandardDeviation 
    -BodyAcceleration - the body component of the acceleration
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### GravityAccelerationMagnitudeTimeSeriesStandardDeviation
- mean of the tGravityAccMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.428]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationMagnitudeTimeSeriesStandardDeviation 
    -GravityAcceleration - the gravitational component of the acceleration
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationJerkMagnitudeTimeSeriesStandardDeviation
- mean of the tBodyAccJerkMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.451]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkMagnitudeTimeSeriesStandardDeviation 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.


### BodyAngularVelocityMagnitudeTimeSeriesStandardDeviation
- mean of the tBodyGyroMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.981,0.300]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityMagnitudeTimeSeriesStandardDeviation 
    -BodyAngularVelocity - the body component of the angular velocity
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularJerkMagnitudeTimeSeriesStandardDeviation
- mean of the tBodyGyroJerkMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.998,0.250]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkMagnitudeTimeSeriesStandardDeviation 
    -BodyAngularJerk - the rate of change of the body component of the angular velocity
	-Magnitude - the magnitude of this vector
	-TimeSeries - this variable was analysed in the time domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationXComponentFrequencyDomainStandardDeviation
- mean of the fBodyAcc-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,0.659]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationXComponentFrequencyDomainStandardDeviation 
    -BodyAcceleration - the body component of the acceleration
	-XComponent - in the _x_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationYComponentFrequencyDomainStandardDeviation
- mean of the fBodyAcc-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.991,0.560]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationYComponentFrequencyDomainStandardDeviation 
    -BodyAcceleration - the body component of the acceleration
	-YComponent - in the _y_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationZComponentFrequencyDomainStandardDeviation
- mean of the fBodyAcc-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.987,0.687]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationZComponentFrequencyDomainStandardDeviation 
    -BodyAcceleration - the body component of the acceleration
	-ZComponent - in the _z_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationJerkXComponentFrequencyDomainStandardDeviation
- mean of the fBodyAccJerk-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.477]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkXComponentFrequencyDomainStandardDeviation 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-XComponent - in the _x_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationJerkYComponentFrequencyDomainStandardDeviation
- mean of the fBodyAccJerk-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.990,0.350]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkYComponentFrequencyDomainStandardDeviation 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-YComponent - in the _y_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationJerkZComponentFrequencyDomainStandardDeviation
- mean of the fBodyAccJerk-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.993,-0.006]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkZComponentFrequencyDomainStandardDeviation 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-ZComponent - in the _z_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularVelocityXComponentFrequencyDomainStandardDeviation
- mean of the fBodyGyro-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.197]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityXComponentFrequencyDomainStandardDeviation 
    -BodyAngularVelocity - the body component of the angular velocity
	-XComponent - in the _x_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularVelocityYComponentFrequencyDomainStandardDeviation
- mean of the fBodyGyro-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.646]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityYComponentFrequencyDomainStandardDeviation 
    -BodyAngularVelocity - the body component of the angular velocity
	-YComponent - in the _y_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularVelocityZComponentFrequencyDomainStandardDeviation
- mean of the fBodyGyro-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.987,0.522]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityZComponentFrequencyDomainStandardDeviation 
    -BodyAngularVelocity - the body component of the angular velocity
	-ZComponent - in the _z_ direction
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationMagnitudeFrequencyDomainStandardDeviation
- mean of the fBodyAccMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.988,0.179]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationMagnitudeFrequencyDomainStandardDeviation 
    -BodyAcceleration - the body component of the acceleration
	-Magnitude - the magnitude of this vector
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAccelerationJerkMagnitudeFrequencyDomainStandardDeviation
- mean of the fBodyBodyAccJerkMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.316]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkMagnitudeFrequencyDomainStandardDeviation 
    -BodyAccelerationJerk - the rate of change of the body component of the acceleration
	-Magnitude - the magnitude of this vector
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularVelocityMagnitudeFrequencyDomainStandardDeviation
- mean of the fBodyBodyGyroMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.981,0.237]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityMagnitudeFrequencyDomainStandardDeviation 
    -BodyAngularVelocity - the body component of the angular velocity
	-Magnitude - the magnitude of this vector
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

### BodyAngularJerkMagnitudeFrequencyDomainStandardDeviation
- mean of the fBodyBodyGyroJerkMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.998,0.288]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkMagnitudeFrequencyDomainStandardDeviation 
    -BodyAngularJerk - the rate of change of the body component of the angular velocity
	-Magnitude - the magnitude of this vector
	-FrequencyDomain - this variable was analysed in the frequency domain
	-StandardDeviation - the standard deviation was taken.

