CodeBook for Project "Getting and Cleaning Data" (B. Thoni)
===========================================================


Original Data can be obtained publicly from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of these originial data one can find here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


===========================================================


* In order to achieve an aggregated  "tidy dataset", as proposed in the assignment, I have aggregated (i.e. built the means) along 30 distinc subjects of this experiment and 6 distinct activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) (each!) on the following wanted features/columns:
(-train and test data have been put together as ONE single dataset!!!-)
(-the new names of the features, used by me, for better readability, are in the second column-)

"activity"  "activity"
"subject"	"subject"
"tBodyAcc.mean...X"	"TimeSignal_of_BodyAcceleration_in_X_Axis___Mean"
"tBodyAcc.mean...Y"	"TimeSignal_of_BodyAcceleration_in_Y_Axis___Mean"
"tBodyAcc.mean...Z"	"TimeSignal_of_BodyAcceleration_in_Z_Axis___Mean"
"tGravityAcc.mean...X"	"TimeSignal_of_GravityAcceleration_in_X_Axis___Mean"
"tGravityAcc.mean...Y"	"TimeSignal_of_GravityAcceleration_in_Y_Axis___Mean"
"tGravityAcc.mean...Z"	"TimeSignal_of_GravityAcceleration_in_Z_Axis___Mean"
"tBodyAccJerk.mean...X"	"TimeSignal_of_BodyAccelerationJerk_in_X_Axis___Mean"
"tBodyAccJerk.mean...Y"	"TimeSignal_of_BodyAccelerationJerk_in_Y_Axis___Mean"
"tBodyAccJerk.mean...Z"	"TimeSignal_of_BodyAccelerationJerk_in_Z_Axis___Mean"
"tBodyGyro.mean...X"	"TimeSignal_of_BodyGyroscope_in_X_Axis___Mean"
"tBodyGyro.mean...Y"	"TimeSignal_of_BodyGyroscope_in_Y_Axis___Mean"
"tBodyGyro.mean...Z"	"TimeSignal_of_BodyGyroscope_in_Z_Axis___Mean"
"tBodyGyroJerk.mean...X"	"TimeSignal_of_BodyGyroscopeJerk_in_X_Axis___Mean"
"tBodyGyroJerk.mean...Y"	"TimeSignal_of_BodyGyroscopeJerk_in_Y_Axis___Mean"
"tBodyGyroJerk.mean...Z"	"TimeSignal_of_BodyGyroscopeJerk_in_Z_Axis___Mean"
"tBodyAccMag.mean.."	"TimeSignal_of_BodyAcceleration_Magnitude____Mean"
"tGravityAccMag.mean.."	"TimeSignal_of_GravityAcceleration_Magnitude____Mean"
"tBodyAccJerkMag.mean.."	"TimeSignal_of_BodyAccelerationJerk_Magnitude____Mean"
"tBodyGyroMag.mean.."	"TimeSignal_of_BodyGyroscope_Magnitude____Mean"
"tBodyGyroJerkMag.mean.."	"TimeSignal_of_BodyGyroscopeJerk_Magnitude____Mean"
"fBodyAcc.mean...X"	"FrequencySignal_of_BodyAcceleration_in_X_Axis___Mean"
"fBodyAcc.mean...Y"	"FrequencySignal_of_BodyAcceleration_in_Y_Axis___Mean"
"fBodyAcc.mean...Z"	"FrequencySignal_of_BodyAcceleration_in_Z_Axis___Mean"
"fBodyAcc.meanFreq...X"	"FrequencySignal_of_BodyAcceleration_in_X_Axis___MeanOfFrequency"
"fBodyAcc.meanFreq...Y"	"FrequencySignal_of_BodyAcceleration_in_Y_Axis___MeanOfFrequency"
"fBodyAcc.meanFreq...Z"	"FrequencySignal_of_BodyAcceleration_in_Z_Axis___MeanOfFrequency"
"fBodyAccJerk.mean...X"	"FrequencySignal_of_BodyAccelerationJerk_in_X_Axis___Mean"
"fBodyAccJerk.mean...Y"	"FrequencySignal_of_BodyAccelerationJerk_in_Y_Axis___Mean"
"fBodyAccJerk.mean...Z"	"FrequencySignal_of_BodyAccelerationJerk_in_Z_Axis___Mean"
"fBodyAccJerk.meanFreq...X"	"FrequencySignal_of_BodyAccelerationJerk_in_X_Axis___MeanOfFrequency"
"fBodyAccJerk.meanFreq...Y"	"FrequencySignal_of_BodyAccelerationJerk_in_Y_Axis___MeanOfFrequency"
"fBodyAccJerk.meanFreq...Z"	"FrequencySignal_of_BodyAccelerationJerk_in_Z_Axis___MeanOfFrequency"
"fBodyGyro.mean...X"	"FrequencySignal_of_BodyGyroscope_in_X_Axis___Mean"
"fBodyGyro.mean...Y"	"FrequencySignal_of_BodyGyroscope_in_Y_Axis___Mean"
"fBodyGyro.mean...Z"	"FrequencySignal_of_BodyGyroscope_in_Z_Axis___Mean"
"fBodyGyro.meanFreq...X"	"FrequencySignal_of_BodyGyroscope_in_X_Axis___MeanOfFrequency"
"fBodyGyro.meanFreq...Y"	"FrequencySignal_of_BodyGyroscope_in_Y_Axis___MeanOfFrequency"
"fBodyGyro.meanFreq...Z"	"FrequencySignal_of_BodyGyroscope_in_Z_Axis___MeanOfFrequency"
"fBodyAccMag.mean.."	"FrequencySignal_of_BodyAcceleration_Magnitude____Mean"
"fBodyAccMag.meanFreq.."	"FrequencySignal_of_BodyAcceleration_Magnitude____MeanOfFrequency"
"fBodyBodyAccJerkMag.mean.."	"FrequencySignal_of_BodyAccelerationJerk_Magnitude____Mean"
"fBodyBodyAccJerkMag.meanFreq.."	"FrequencySignal_of_BodyAccelerationJerk_Magnitude____MeanOfFrequency"
"fBodyBodyGyroMag.mean.."	"FrequencySignal_of_BodyGyroscope_Magnitude____Mean"
"fBodyBodyGyroMag.meanFreq.."	"FrequencySignal_of_BodyGyroscope_Magnitude____MeanOfFrequency"
"fBodyBodyGyroJerkMag.mean.."	"FrequencySignal_of_BodyGyroscopeJerk_Magnitude____Mean"
"fBodyBodyGyroJerkMag.meanFreq.."	"FrequencySignal_of_BodyGyroscopeJerk_Magnitude____MeanOfFrequency"
"angle.tBodyAccMean.gravity."	"Angle_TimeSignal_of_BodyAcceleration_Gravity___Mean"
"angle.tBodyAccJerkMean..gravityMean."	"Angle_TimeSignal_of_BodyAccelerationJerkMean_Gravity___Mean."
"angle.tBodyGyroMean.gravityMean."	"Angle_TimeSignal_of_BodyGyroscopeMean_Gravity___Mean"
"angle.tBodyGyroJerkMean.gravityMean."	"Angle_TimeSignal_of_BodyGyroscopeJerkMean_GravityMean"
"angle.X.gravityMean."	"Angle_X_Gravity___Mean."
"angle.Y.gravityMean."	"Angle_Y_Gravity___Mean."
"angle.Z.gravityMean."	"Angle_Z_Gravity___Mean."
"tBodyAcc.std...X"	"TimeSignal_of_BodyAcceleration_in_X_Axis___StandardDeviation"
"tBodyAcc.std...Y"	"TimeSignal_of_BodyAcceleration_in_Y_Axis___StandardDeviation"
"tBodyAcc.std...Z"	"TimeSignal_of_BodyAcceleration_in_Z_Axis___StandardDeviation"
"tGravityAcc.std...X"	"TimeSignal_of_GravityAcceleration_in_X_Axis___StandardDeviation"
"tGravityAcc.std...Y"	"TimeSignal_of_GravityAcceleration_in_Y_Axis___StandardDeviation"
"tGravityAcc.std...Z"	"TimeSignal_of_GravityAcceleration_in_Z_Axis___StandardDeviation"
"tBodyAccJerk.std...X"	"TimeSignal_of_BodyAccelerationJerk_in_X_Axis___StandardDeviation"
"tBodyAccJerk.std...Y"	"TimeSignal_of_BodyAccelerationJerk_in_Y_Axis___StandardDeviation"
"tBodyAccJerk.std...Z"	"TimeSignal_of_BodyAccelerationJerk_in_Z_Axis___StandardDeviation"
"tBodyGyro.std...X"	"TimeSignal_of_BodyGyroscope_in_X_Axis___StandardDeviation"
"tBodyGyro.std...Y"	"TimeSignal_of_BodyGyroscope_in_Y_Axis___StandardDeviation"
"tBodyGyro.std...Z"	"TimeSignal_of_BodyGyroscope_in_Z_Axis___StandardDeviation"
"tBodyGyroJerk.std...X"	"TimeSignal_of_BodyGyroscopeJerk_in_X_Axis___StandardDeviation"
"tBodyGyroJerk.std...Y"	"TimeSignal_of_BodyGyroscopeJerk_in_Y_Axis___StandardDeviation"
"tBodyGyroJerk.std...Z"	"TimeSignal_of_BodyGyroscopeJerk_in_Z_Axis___StandardDeviation"
"tBodyAccMag.std.."	"TimeSignal_of_BodyAcceleration_Magnitude____StandardDeviation"
"tGravityAccMag.std.."	"TimeSignal_of_GravityAcceleration_Magnitude____StandardDeviation"
"tBodyAccJerkMag.std.."	"TimeSignal_of_BodyAccelerationJerk_Magnitude____StandardDeviation"
"tBodyGyroMag.std.."	"TimeSignal_of_BodyGyroscope_Magnitude____StandardDeviation"
"tBodyGyroJerkMag.std.."	"TimeSignal_of_BodyGyroscopeJerk_Magnitude____StandardDeviation"
"fBodyAcc.std...X"	"FrequencySignal_of_BodyAcceleration_in_X_Axis___StandardDeviation"
"fBodyAcc.std...Y"	"FrequencySignal_of_BodyAcceleration_in_Y_Axis___StandardDeviation"
"fBodyAcc.std...Z"	"FrequencySignal_of_BodyAcceleration_in_Z_Axis___StandardDeviation"
"fBodyAccJerk.std...X"	"FrequencySignal_of_BodyAccelerationJerk_in_X_Axis___StandardDeviation"
"fBodyAccJerk.std...Y"	"FrequencySignal_of_BodyAccelerationJerk_in_Y_Axis___StandardDeviation"
"fBodyAccJerk.std...Z"	"FrequencySignal_of_BodyAccelerationJerk_in_Z_Axis___StandardDeviation"
"fBodyGyro.std...X"	"FrequencySignal_of_BodyGyroscope_in_X_Axis___StandardDeviation"
"fBodyGyro.std...Y"	"FrequencySignal_of_BodyGyroscope_in_Y_Axis___StandardDeviation"
"fBodyGyro.std...Z"	"FrequencySignal_of_BodyGyroscope_in_Z_Axis___StandardDeviation"
"fBodyAccMag.std.."	"FrequencySignal_of_BodyAcceleration_Magnitude____StandardDeviation"
"fBodyBodyAccJerkMag.std.."	"FrequencySignal_of_BodyAccelerationJerk_Magnitude____StandardDeviation"
"fBodyBodyGyroMag.std.."	"FrequencySignal_of_BodyGyroscope_Magnitude____StandardDeviation"
"fBodyBodyGyroJerkMag.std.."	"FrequencySignal_of_BodyGyroscopeJerk_Magnitude____StandardDeviation"


* These mentioned features were all those, that had the word "mean" or "std" in its original (feature/column)name
(except subject and activity)


* All measurements (except subject and activity) might display either negative or positive comma digits.

* My output datafile "..._tidy.txt" is a tabulator separated text-file, easy to import e.g. in R or Excel

========================================================================================
Info about original data/features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

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
