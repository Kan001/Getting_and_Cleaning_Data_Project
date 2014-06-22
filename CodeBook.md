
Dataset Description:
====================

	The dataset "tidy_ds.csv" found in this github repo contains a subset of the variables found in the
	following url:
		https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

	The data is a collection of observations related to body movement and measured by subjects wearing a Smartphone while performing routine physical activity.

	The data was collected in an experiment by the University of Genoa in Italy for Human Activity Recognition research.

	For further detail go to the following website:
		http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Transformations:
=====================

	The requirements of this project were to combine three data sets from two different groups of subjects and then create
	a dataset containing the following:
		- Subject ID
		- Activity ID
		- A mean for each of the variables contained in the subset specified by the requirements
		
		Note : The interim dataset contained 68 columns and 10,299 rows of data.  

	The subset of data are the variables that contain mean and standard deviation data.

	The column names are not the same as is in the source data. The subject ID and activity ID wre assigned as subject_ID and activity_ID and the
	data in the activity ID column was converted from an interger to more informative text descriptions. In addition vector columns were changed to exclude the "()" string.

Data Column/Variables:
======================

Note: This description in this section was copied from the features_info file found in the url mentioned in the Dataset Desciption section.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Tidy Data Set Vector Variables Selected:
========================================
	
The following vector variables (mean and standard deviation) were chosen:
	fBodyAcc-mean-X
	fBodyAcc-mean-Y
	fBodyAcc-mean-Z
	fBodyAcc-std-X
	fBodyAcc-std-Y
	fBodyAcc-std-Z
	fBodyAccJerk-mean-X
	fBodyAccJerk-mean-Y
	fBodyAccJerk-mean-Z
	fBodyAccJerk-std-X
	fBodyAccJerk-std-Y
	fBodyAccJerk-std-Z
	fBodyAccMag-mean
	fBodyAccMag-std
	fBodyBodyAccJerkMag-mean
	fBodyBodyAccJerkMag-std
	fBodyBodyGyroJerkMag-mean
	fBodyBodyGyroJerkMag-std
	fBodyBodyGyroMag-mean
	fBodyBodyGyroMag-std
	fBodyGyro-mean-X
	fBodyGyro-mean-Y
	fBodyGyro-mean-Z
	fBodyGyro-std-X
	fBodyGyro-std-Y
	fBodyGyro-std-Z
	tBodyAcc-mean-X
	tBodyAcc-mean-Y
	tBodyAcc-mean-Z
	tBodyAcc-std-X
	tBodyAcc-std-Y
	tBodyAcc-std-Z
	tBodyAccJerk-mean-X
	tBodyAccJerk-mean-Y
	tBodyAccJerk-mean-Z
	tBodyAccJerk-std-X
	tBodyAccJerk-std-Y
	tBodyAccJerk-std-Z
	tBodyAccJerkMag-mean
	tBodyAccJerkMag-std
	tBodyAccMag-mean
	tBodyAccMag-std
	tBodyGyro-mean-X
	tBodyGyro-mean-Y
	tBodyGyro-mean-Z
	tBodyGyro-std-X
	tBodyGyro-std-Y
	tBodyGyro-std-Z
	tBodyGyroJerk-mean-X
	tBodyGyroJerk-mean-Y
	tBodyGyroJerk-mean-Z
	tBodyGyroJerk-std-X
	tBodyGyroJerk-std-Y
	tBodyGyroJerk-std-Z
	tBodyGyroJerkMag-mean
	tBodyGyroJerkMag-std
	tBodyGyroMag-mean
	tBodyGyroMag-std
	tGravityAcc-mean-X
	tGravityAcc-mean-Y
	tGravityAcc-mean-Z
	tGravityAcc-std-X
	tGravityAcc-std-Y
	tGravityAcc-std-Z
	tGravityAccMag-mean
	tGravityAccMag-std