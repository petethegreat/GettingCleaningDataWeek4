# MAKE SURE THIS CONTAINS UNITS

everything is normalised to [-1 1], so all quantities are dimensionless (no units, just numbers).

# UCI HAR tidied data


## Project Description
A tidied dataset based on the UCI Human activities research dataset. 

##Study design and data processing

###Collection of the raw data
The raw data was collected using the sensors on a Samsung Galaxy S II phone. Sensor data was recorded while study participants where engaged in six types of physical activity, with thhe phone clipped to their waist. The accelerometer and gyroscope on the phone were used to measure acceleration and angular velocity

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

##Sources
Sources you used if any, otherise leave out.
include link to UCI study page
another link to the dataset

