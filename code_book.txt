##Data Source

The data was obtained from the "Human Activity Recognition Using Smartphones Data Set Version 1.0" (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

This dataset was derived from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity data was captured at a constant rate of 50Hz.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculations in the time (derivation) and frequency (Fast Fourier Transform) domains.

For more information about the "Human Activity Recognition Using Smartphones Dataset Version 1.0" contact: 

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)  
1 - Smartlab - activityrecognition@smartlab.ws - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.  
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain

*Related Articles*:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

##Data Processing

Data from the original zip file was processed according to the following steps:

1.  Load test data (features data, activity labels, subjects numbers)
2.  Load train data(features data, activity labels, subjects numbers)
3.  Merge all elements from the training and the test sets to create one data set
4.  Name first 2 columns as 'Subject' and 'Activity'
5.  Download the features list file
6.  Extract only the column names pertinent to the mean and standard deviation for each feature, using regular expressions
7.  Use the result to select the data columns of interest in the merged data set
8.  Name these columns using the names extracted from the features list
9.  Get activities names and corresponding numeric labels from the activity labels file
10. Replace numeric labels with corresponding activity names in the merged data set
11. Sort the rows by subject number and activity
12. Format the features names according to naming convention choices made by author:  
-Use underscores,  
-Suppress parentheses,  
-Precise explicitly if the feature has been created in the time or in the frequency domain,  
-Capitalize "mean" and "std"
13. Save this dataset (10299 observations of 68 variables) as "tidy_dataset.txt"
14. Create a dataset including only the mean value per subject and activity
15. Save this derived dataset (180 observations of 68 variables) as "tidy_dataset_mean.txt"

##Variable Names and Descriptions

This dataset includes 68 variables. Units of sensor data are unspecified.

Variable Name                   |Description
--------------------------------|---------------------------------------------------------------------------------------------------------
"Subject"                       |Integer between 1 and 30 identifying the subject
"Activity"                      |Character string identifying the activity
"Time_BodyAcc_Mean_X"           |Mean of body acceleration along X axis calculated in time domain
"Time_BodyAcc_Mean_Y"           |Mean of body acceleration along Y axis calculated in time domain
"Time_BodyAcc_Mean_Z"           |Mean of body acceleration along Z axis calculated in time domain
"Time_BodyAcc_Std_X"            |Standard deviation of body acceleration along X axis calculated in time domain
"Time_BodyAcc_Std_Y"            |Standard deviation of body acceleration along Y axis calculated in time domain
"Time_BodyAcc_Std_Z"            |Standard deviation of body acceleration along Z axis calculated in time domain
"Time_GravityAcc_Mean_X"        |Mean of gravity acceleration along X axis calculated in time domain
"Time_GravityAcc_Mean_Y"        |Mean of gravity acceleration along Y axis calculated in time domain
"Time_GravityAcc_Mean_Z"        |Mean of gravity acceleration along Z axis calculated in time domain
"Time_GravityAcc_Std_X"         |Standard deviation of gravity acceleration along X axis calculated in time domain
"Time_GravityAcc_Std_Y"         |Standard deviation of gravity acceleration along Y axis calculated in time domain
"Time_GravityAcc_Std_Z"         |Standard deviation of gravity acceleration along Z axis calculated in time domain
"Time_BodyAccJerk_Mean_X"       |Mean of jerk signal (derivation) of body acceleration along X axis calculated in time domain
"Time_BodyAccJerk_Mean_Y"       |Mean of jerk signal (derivation) of body acceleration along Y axis calculated in time domain
"Time_BodyAccJerk_Mean_Z"       |Mean of jerk signal (derivation) of body acceleration along Z axis calculated in time domain
"Time_BodyAccJerk_Std_X"        |Mean of jerk signal (derivation) of body acceleration along X axis calculated in time domain
"Time_BodyAccJerk_Std_Y"        |Mean of jerk signal (derivation) of body acceleration along Y axis calculated in time domain
"Time_BodyAccJerk_Std_Z"        |Mean of jerk signal (derivation) of body acceleration along Z axis calculated in time domain
"Time_BodyGyro_Mean_X"          |Mean of body angular velocity along X axis calculated in time domain
"Time_BodyGyro_Mean_Y"          |Mean of body angular velocity along Y axis calculated in time domain
"Time_BodyGyro_Mean_Z"          |Mean of body angular velocity along Z axis calculated in time domain
"Time_BodyGyro_Std_X"           |Standard deviation of body angular velocity along X axis calculated in time domain
"Time_BodyGyro_Std_Y"           |Standard deviation of body angular velocity along Y axis calculated in time domain
"Time_BodyGyro_Std_Z"           |Standard deviation of body angular velocity along Z axis calculated in time domain
"Time_BodyGyroJerk_Mean_X"      |Mean of jerk signal (derivation) of body angular velocity along X axis calculated in time domain
"Time_BodyGyroJerk_Mean_Y"      |Mean of jerk signal (derivation) of body angular velocity along Y axis calculated in time domain
"Time_BodyGyroJerk_Mean_Z"      |Mean of jerk signal (derivation) of body angular velocity along Z axis calculated in time domain
"Time_BodyGyroJerk_Std_X"       |Standard deviation of jerk signal (derivation) of body angular velocity along X axis calculated in time domain
"Time_BodyGyroJerk_Std_Y"       |Standard deviation of jerk signal (derivation) of body angular velocity along Y axis calculated in time domain
"Time_BodyGyroJerk_Std_Z"       |Standard deviation of jerk signal (derivation) of body angular velocity along Z axis calculated in time domain
"Time_BodyAccMag_Mean"          |Mean of magnitude (Euclidean norm) of body acceleration calculated in time domain
"Time_BodyAccMag_Std"           |Standard deviation of magnitude (Euclidean norm) of body acceleration calculated in time domain
"Time_GravityAccMag_Mean"       |Mean of magnitude (Euclidean norm) of gravity acceleration calculated in time domain
"Time_GravityAccMag_Std"        |Standard deviation of magnitude (Euclidean norm) of gravity acceleration calculated in time domain
"Time_BodyAccJerkMag_Mean"      |Mean of magnitude (Euclidean norm) of jerk signal (derivation) of body acceleration calculated in time domain
"Time_BodyAccJerkMag_Std"       |Standard deviation of magnitude (Euclidean norm) of jerk signal (derivation) of body acceleration calculated in time domain
"Time_BodyGyroMag_Mean"         |Mean of magnitude (Euclidean norm) of body angular velocity calculated in time domain
"Time_BodyGyroMag_Std"          |Standard deviation of magnitude (Euclidean norm) of body angular velocity calculated in time domain
"Time_BodyGyroJerkMag_Mean"     |Mean of magnitude (Euclidean norm) of jerk signal (derivation) of body angular velocity calculated in time domain
"Time_BodyGyroJerkMag_Std"      |Standard deviation of magnitude (Euclidean norm) of jerk signal (derivation) of body angular velocity calculated in time domain
"Freq_BodyAcc_Mean_X"           |Mean of body acceleration along X axis calculated in frequency domain
"Freq_BodyAcc_Mean_Y"           |Mean of body acceleration along Y axis calculated in frequency domain
"Freq_BodyAcc_Mean_Z"           |Mean of body acceleration along Z axis calculated in frequency domain
"Freq_BodyAcc_Std_X"            |Standard deviation of body acceleration along X axis calculated in frequency domain
"Freq_BodyAcc_Std_Y"            |Standard deviation of body acceleration along Y axis calculated in frequency domain
"Freq_BodyAcc_Std_Z"            |Standard deviation of body acceleration along Z axis calculated in frequency domain
"Freq_BodyAccJerk_Mean_X"       |Mean of jerk signal (derivation) of body acceleration along X axis calculated in frequency domain
"Freq_BodyAccJerk_Mean_Y"       |Mean of jerk signal (derivation) of body acceleration along Y axis calculated in frequency domain
"Freq_BodyAccJerk_Mean_Z"       |Mean of jerk signal (derivation) of body acceleration along Z axis calculated in frequency domain
"Freq_BodyAccJerk_Std_X"        |Standard deviation of jerk signal (derivation) of body acceleration along X axis calculated in frequency domain
"Freq_BodyAccJerk_Std_Y"        |Standard deviation of jerk signal (derivation) of body acceleration along Y axis calculated in frequency domain
"Freq_BodyAccJerk_Std_Z"        |Standard deviation of jerk signal (derivation) of body acceleration along Z axis calculated in frequency domain
"Freq_BodyGyro_Mean_X"          |Mean of body angular velocity along X axis calculated in frequency domain
"Freq_BodyGyro_Mean_Y"          |Mean of body angular velocity along Y axis calculated in frequency domain
"Freq_BodyGyro_Mean_Z"          |Mean of body angular velocity along Z axis calculated in frequency domain
"Freq_BodyGyro_Std_X"           |Standard deviation of body angular velocity along X axis calculated in frequency domain
"Freq_BodyGyro_Std_Y"           |Standard deviation of body angular velocity along Y axis calculated in frequency domain
"Freq_BodyGyro_Std_Z"           |Standard deviation of body angular velocity along Z axis calculated in frequency domain
"Freq_BodyAccMag_Mean"          |Mean of magnitude (Euclidean norm) of body acceleration calculated in frequency domain
"Freq_BodyAccMag_Std"           |Standard deviation of magnitude (Euclidean norm) of body acceleration calculated in frequency domain
"Freq_BodyBodyAccJerkMag_Mean"  |Mean of magnitude (Euclidean norm) of jerk signal (derivation) of body acceleration calculated in frequency domain
"Freq_BodyBodyAccJerkMag_Std"   |Standard deviation of magnitude (Euclidean norm) of jerk signal (derivation) of body acceleration calculated in frequency domain  
"Freq_BodyBodyGyroMag_Mean"     |Mean of magnitude (Euclidean norm) of body angular velocity calculated in frequency domain
"Freq_BodyBodyGyroMag_Std"      |Standard deviation of magnitude (Euclidean norm) of body angular velocity calculated in frequency domain
"Freq_BodyBodyGyroJerkMag_Mean" |Mean of magnitude (Euclidean norm) of jerk signal (derivation) of body angular velocity calculated in frequency domain
"Freq_BodyBodyGyroJerkMag_Std"  |Standard deviation of magnitude (Euclidean norm) of jerk signal (derivation) of body angular velocity calculated in frequency domain
