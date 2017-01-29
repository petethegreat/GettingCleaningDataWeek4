# UCI HAR tidied data


## Project Description
The aim of this project is to produce a tidied dataset from the UCI Human activities research dataset. 

##Study design and data processing

###Collection of the raw data
The raw data was collected using the sensors on a Samsung Galaxy S II phone. Sensor data was recorded while study participants where engaged in six types of physical activity, with thhe phone clipped to their waist. The accelerometer and gyroscope on the phone were used to measure acceleration and angular velocity. These measurements were processed to seperate the gravitaational component from the rest of the body's movement. Further details may be found on the [HAR website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), or in the README.txt and features_info.txt files of contained in the [dataset archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

###Notes on the original (raw) data 
Some additional notes (if avaialble, otherwise you can leave this section out).

##Creating the tidy datafile

###Guide to create the tidy data file
1. Download the UCI HAR dataset, which can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Unzip the compressed dataset file. The run\_analysis.R script should be located in the same place as the "UCI HAR Dataset" directory.
3. Start R. Source the script: '''R source("run_analysis.R")'''
4. The tidy dataset will be stored in a dataframe called "tidyData". This can be written to file using the command '''R write.table(tidyData,file="./tidyFileOutput.txt",row.names=FALSE)

###Cleaning of the data
Short, high-level description of what the cleaning script does. A more detailed description of the cleaning/tidying process can be found in the [READMEM.md](./README.md)

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
-
-
-
-

### activity
-
-
-
-


### BodyAccelerationXComponentTimeSeriesMean
- mean of the tBodyAcc-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[0.222,0.301]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationXComponentTimeSeriesMean - name description


### BodyAccelerationYComponentTimeSeriesMean
- mean of the tBodyAcc-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.041,-0.001]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationYComponentTimeSeriesMean - name description


### BodyAccelerationZComponentTimeSeriesMean
- mean of the tBodyAcc-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.153,-0.075]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationZComponentTimeSeriesMean - name description


### GravityAccelerationXComponentTimeSeriesMean
- mean of the tGravityAcc-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.680,0.975]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationXComponentTimeSeriesMean - name description


### GravityAccelerationYComponentTimeSeriesMean
- mean of the tGravityAcc-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.480,0.957]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationYComponentTimeSeriesMean - name description


### GravityAccelerationZComponentTimeSeriesMean
- mean of the tGravityAcc-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.495,0.958]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationZComponentTimeSeriesMean - name description


### BodyAccelerationJerkXComponentTimeSeriesMean
- mean of the tBodyAccJerk-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[0.043,0.130]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkXComponentTimeSeriesMean - name description


### BodyAccelerationJerkYComponentTimeSeriesMean
- mean of the tBodyAccJerk-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.039,0.057]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkYComponentTimeSeriesMean - name description


### BodyAccelerationJerkZComponentTimeSeriesMean
- mean of the tBodyAccJerk-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.067,0.038]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkZComponentTimeSeriesMean - name description


### BodyAngularVelocityXComponentTimeSeriesMean
- mean of the tBodyGyro-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.206,0.193]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityXComponentTimeSeriesMean - name description


### BodyAngularVelocityYComponentTimeSeriesMean
- mean of the tBodyGyro-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.204,0.027]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityYComponentTimeSeriesMean - name description


### BodyAngularVelocityZComponentTimeSeriesMean
- mean of the tBodyGyro-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.072,0.179]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityZComponentTimeSeriesMean - name description


### BodyAngularJerkXComponentTimeSeriesMean
- mean of the tBodyGyroJerk-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.157,-0.022]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkXComponentTimeSeriesMean - name description


### BodyAngularJerkYComponentTimeSeriesMean
- mean of the tBodyGyroJerk-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.077,-0.013]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkYComponentTimeSeriesMean - name description


### BodyAngularJerkZComponentTimeSeriesMean
- mean of the tBodyGyroJerk-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.092,-0.007]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkZComponentTimeSeriesMean - name description


### BodyAccelerationMagnitudeTimeSeriesMean
- mean of the tBodyAccMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.645]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationMagnitudeTimeSeriesMean - name description


### GravityAccelerationMagnitudeTimeSeriesMean
- mean of the tGravityAccMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.645]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationMagnitudeTimeSeriesMean - name description


### BodyAccelerationJerkMagnitudeTimeSeriesMean
- mean of the tBodyAccJerkMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.993,0.434]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkMagnitudeTimeSeriesMean - name description


### BodyAngularVelocityMagnitudeTimeSeriesMean
- mean of the tBodyGyroMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.981,0.418]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityMagnitudeTimeSeriesMean - name description


### BodyAngularJerkMagnitudeTimeSeriesMean
- mean of the tBodyGyroJerkMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,0.088]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkMagnitudeTimeSeriesMean - name description


### BodyAccelerationXComponentFrequencyDomainMean
- mean of the fBodyAcc-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.537]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationXComponentFrequencyDomainMean - name description


### BodyAccelerationYComponentFrequencyDomainMean
- mean of the fBodyAcc-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.989,0.524]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationYComponentFrequencyDomainMean - name description


### BodyAccelerationZComponentFrequencyDomainMean
- mean of the fBodyAcc-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.989,0.281]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationZComponentFrequencyDomainMean - name description


### BodyAccelerationJerkXComponentFrequencyDomainMean
- mean of the fBodyAccJerk-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.474]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkXComponentFrequencyDomainMean - name description


### BodyAccelerationJerkYComponentFrequencyDomainMean
- mean of the fBodyAccJerk-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.989,0.277]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkYComponentFrequencyDomainMean - name description


### BodyAccelerationJerkZComponentFrequencyDomainMean
- mean of the fBodyAccJerk-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.992,0.158]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkZComponentFrequencyDomainMean - name description


### BodyAngularVelocityXComponentFrequencyDomainMean
- mean of the fBodyGyro-mean()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.993,0.475]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityXComponentFrequencyDomainMean - name description


### BodyAngularVelocityYComponentFrequencyDomainMean
- mean of the fBodyGyro-mean()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.329]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityYComponentFrequencyDomainMean - name description


### BodyAngularVelocityZComponentFrequencyDomainMean
- mean of the fBodyGyro-mean()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.492]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityZComponentFrequencyDomainMean - name description


### BodyAccelerationMagnitudeFrequencyDomainMean
- mean of the fBodyAccMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.987,0.587]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationMagnitudeFrequencyDomainMean - name description


### BodyAccelerationJerkMagnitudeFrequencyDomainMean
- mean of the fBodyBodyAccJerkMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.538]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkMagnitudeFrequencyDomainMean - name description


### BodyAngularVelocityMagnitudeFrequencyDomainMean
- mean of the fBodyBodyGyroMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.987,0.204]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityMagnitudeFrequencyDomainMean - name description


### BodyAngularJerkMagnitudeFrequencyDomainMean
- mean of the fBodyBodyGyroJerkMag-mean() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.998,0.147]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkMagnitudeFrequencyDomainMean - name description


### BodyAccelerationXComponentTimeSeriesStandardDeviation
- mean of the tBodyAcc-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.996,0.627]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationXComponentTimeSeriesStandardDeviation - name description


### BodyAccelerationYComponentTimeSeriesStandardDeviation
- mean of the tBodyAcc-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.990,0.617]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationYComponentTimeSeriesStandardDeviation - name description


### BodyAccelerationZComponentTimeSeriesStandardDeviation
- mean of the tBodyAcc-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.988,0.609]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationZComponentTimeSeriesStandardDeviation - name description


### GravityAccelerationXComponentTimeSeriesStandardDeviation
- mean of the tGravityAcc-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,-0.830]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationXComponentTimeSeriesStandardDeviation - name description


### GravityAccelerationYComponentTimeSeriesStandardDeviation
- mean of the tGravityAcc-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,-0.644]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationYComponentTimeSeriesStandardDeviation - name description


### GravityAccelerationZComponentTimeSeriesStandardDeviation
- mean of the tGravityAcc-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.991,-0.610]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationZComponentTimeSeriesStandardDeviation - name description


### BodyAccelerationJerkXComponentTimeSeriesStandardDeviation
- mean of the tBodyAccJerk-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.544]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkXComponentTimeSeriesStandardDeviation - name description


### BodyAccelerationJerkYComponentTimeSeriesStandardDeviation
- mean of the tBodyAccJerk-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.990,0.355]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkYComponentTimeSeriesStandardDeviation - name description


### BodyAccelerationJerkZComponentTimeSeriesStandardDeviation
- mean of the tBodyAccJerk-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.993,0.031]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkZComponentTimeSeriesStandardDeviation - name description


### BodyAngularVelocityXComponentTimeSeriesStandardDeviation
- mean of the tBodyGyro-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.268]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityXComponentTimeSeriesStandardDeviation - name description


### BodyAngularVelocityYComponentTimeSeriesStandardDeviation
- mean of the tBodyGyro-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.477]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityYComponentTimeSeriesStandardDeviation - name description


### BodyAngularVelocityZComponentTimeSeriesStandardDeviation
- mean of the tBodyGyro-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.565]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityZComponentTimeSeriesStandardDeviation - name description


### BodyAngularJerkXComponentTimeSeriesStandardDeviation
- mean of the tBodyGyroJerk-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,0.179]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkXComponentTimeSeriesStandardDeviation - name description


### BodyAngularJerkYComponentTimeSeriesStandardDeviation
- mean of the tBodyGyroJerk-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,0.296]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkYComponentTimeSeriesStandardDeviation - name description


### BodyAngularJerkZComponentTimeSeriesStandardDeviation
- mean of the tBodyGyroJerk-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.193]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkZComponentTimeSeriesStandardDeviation - name description


### BodyAccelerationMagnitudeTimeSeriesStandardDeviation
- mean of the tBodyAccMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.428]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationMagnitudeTimeSeriesStandardDeviation - name description


### GravityAccelerationMagnitudeTimeSeriesStandardDeviation
- mean of the tGravityAccMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.986,0.428]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- GravityAccelerationMagnitudeTimeSeriesStandardDeviation - name description


### BodyAccelerationJerkMagnitudeTimeSeriesStandardDeviation
- mean of the tBodyAccJerkMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.451]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkMagnitudeTimeSeriesStandardDeviation - name description


### BodyAngularVelocityMagnitudeTimeSeriesStandardDeviation
- mean of the tBodyGyroMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.981,0.300]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityMagnitudeTimeSeriesStandardDeviation - name description


### BodyAngularJerkMagnitudeTimeSeriesStandardDeviation
- mean of the tBodyGyroJerkMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.998,0.250]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkMagnitudeTimeSeriesStandardDeviation - name description


### BodyAccelerationXComponentFrequencyDomainStandardDeviation
- mean of the fBodyAcc-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.997,0.659]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationXComponentFrequencyDomainStandardDeviation - name description


### BodyAccelerationYComponentFrequencyDomainStandardDeviation
- mean of the fBodyAcc-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.991,0.560]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationYComponentFrequencyDomainStandardDeviation - name description


### BodyAccelerationZComponentFrequencyDomainStandardDeviation
- mean of the fBodyAcc-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.987,0.687]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationZComponentFrequencyDomainStandardDeviation - name description


### BodyAccelerationJerkXComponentFrequencyDomainStandardDeviation
- mean of the fBodyAccJerk-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.477]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkXComponentFrequencyDomainStandardDeviation - name description


### BodyAccelerationJerkYComponentFrequencyDomainStandardDeviation
- mean of the fBodyAccJerk-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.990,0.350]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkYComponentFrequencyDomainStandardDeviation - name description


### BodyAccelerationJerkZComponentFrequencyDomainStandardDeviation
- mean of the fBodyAccJerk-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.993,-0.006]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkZComponentFrequencyDomainStandardDeviation - name description


### BodyAngularVelocityXComponentFrequencyDomainStandardDeviation
- mean of the fBodyGyro-std()-X variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.995,0.197]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityXComponentFrequencyDomainStandardDeviation - name description


### BodyAngularVelocityYComponentFrequencyDomainStandardDeviation
- mean of the fBodyGyro-std()-Y variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.646]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityYComponentFrequencyDomainStandardDeviation - name description


### BodyAngularVelocityZComponentFrequencyDomainStandardDeviation
- mean of the fBodyGyro-std()-Z variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.987,0.522]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityZComponentFrequencyDomainStandardDeviation - name description


### BodyAccelerationMagnitudeFrequencyDomainStandardDeviation
- mean of the fBodyAccMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.988,0.179]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationMagnitudeFrequencyDomainStandardDeviation - name description


### BodyAccelerationJerkMagnitudeFrequencyDomainStandardDeviation
- mean of the fBodyBodyAccJerkMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.994,0.316]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAccelerationJerkMagnitudeFrequencyDomainStandardDeviation - name description


### BodyAngularVelocityMagnitudeFrequencyDomainStandardDeviation
- mean of the fBodyBodyGyroMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.981,0.237]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularVelocityMagnitudeFrequencyDomainStandardDeviation - name description


### BodyAngularJerkMagnitudeFrequencyDomainStandardDeviation
- mean of the fBodyBodyGyroJerkMag-std() variable from the UCI HAR dataset, averaged over all samples for the corresponding subject and activity
- numeric class
- values lie in the range `[-0.998,0.288]` (raw data was normalised to range `[-1.0,1.0]`)
- This variable is a dimensionless quantity (no unit), due to the normalisation of the input data.
- BodyAngularJerkMagnitudeFrequencyDomainStandardDeviation - name description


