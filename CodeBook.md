# **Code book**

## Study design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Code book

- The estimated body acceleration (time and frequency domain)
- Triaxial Angular velocity from the gyroscope.
- Activity 
- Subject: An identifier of the subject who carried out the experiment

- Variables:
 [1] "timeBodyAccelerometer-mean()-X"                    
 [2] "timeBodyAccelerometer-mean()-Y"                    
 [3] "timeBodyAccelerometer-mean()-Z"                    
 [4] "timeBodyAccelerometer-std()-X"                     
 [5] "timeBodyAccelerometer-std()-Y"                     
 [6] "timeBodyAccelerometer-std()-Z"                     
 [7] "timeGravityAccelerometer-mean()-X"                 
 [8] "timeGravityAccelerometer-mean()-Y"                 
 [9] "timeGravityAccelerometer-mean()-Z"                 
[10] "timeGravityAccelerometer-std()-X"                  
[11] "timeGravityAccelerometer-std()-Y"                  
[12] "timeGravityAccelerometer-std()-Z"                  
[13] "timeBodyAccelerometerJerk-mean()-X"                
[14] "timeBodyAccelerometerJerk-mean()-Y"                
[15] "timeBodyAccelerometerJerk-mean()-Z"                
[16] "timeBodyAccelerometerJerk-std()-X"                 
[17] "timeBodyAccelerometerJerk-std()-Y"                 
[18] "timeBodyAccelerometerJerk-std()-Z"                 
[19] "timeBodyGyroscope-mean()-X"                        
[20] "timeBodyGyroscope-mean()-Y"                        
[21] "timeBodyGyroscope-mean()-Z"                        
[22] "timeBodyGyroscope-std()-X"                         
[23] "timeBodyGyroscope-std()-Y"                         
[24] "timeBodyGyroscope-std()-Z"                         
[25] "timeBodyGyroscopeJerk-mean()-X"                    
[26] "timeBodyGyroscopeJerk-mean()-Y"                    
[27] "timeBodyGyroscopeJerk-mean()-Z"                    
[28] "timeBodyGyroscopeJerk-std()-X"                     
[29] "timeBodyGyroscopeJerk-std()-Y"                     
[30] "timeBodyGyroscopeJerk-std()-Z"                     
[31] "timeBodyAccelerometerMagnitude-mean()"             
[32] "timeBodyAccelerometerMagnitude-std()"              
[33] "timeGravityAccelerometerMagnitude-mean()"          
[34] "timeGravityAccelerometerMagnitude-std()"           
[35] "timeBodyAccelerometerJerkMagnitude-mean()"         
[36] "timeBodyAccelerometerJerkMagnitude-std()"          
[37] "timeBodyGyroscopeMagnitude-mean()"                 
[38] "timeBodyGyroscopeMagnitude-std()"                  
[39] "timeBodyGyroscopeJerkMagnitude-mean()"             
[40] "timeBodyGyroscopeJerkMagnitude-std()"              
[41] "frequencyBodyAccelerometer-mean()-X"               
[42] "frequencyBodyAccelerometer-mean()-Y"               
[43] "frequencyBodyAccelerometer-mean()-Z"               
[44] "frequencyBodyAccelerometer-std()-X"                
[45] "frequencyBodyAccelerometer-std()-Y"                
[46] "frequencyBodyAccelerometer-std()-Z"                
[47] "frequencyBodyAccelerometer-meanFreq()-X"           
[48] "frequencyBodyAccelerometer-meanFreq()-Y"           
[49] "frequencyBodyAccelerometer-meanFreq()-Z"           
[50] "frequencyBodyAccelerometerJerk-mean()-X"           
[51] "frequencyBodyAccelerometerJerk-mean()-Y"           
[52] "frequencyBodyAccelerometerJerk-mean()-Z"           
[53] "frequencyBodyAccelerometerJerk-std()-X"            
[54] "frequencyBodyAccelerometerJerk-std()-Y"            
[55] "frequencyBodyAccelerometerJerk-std()-Z"            
[56] "frequencyBodyAccelerometerJerk-meanFreq()-X"       
[57] "frequencyBodyAccelerometerJerk-meanFreq()-Y"       
[58] "frequencyBodyAccelerometerJerk-meanFreq()-Z"       
[59] "frequencyBodyGyroscope-mean()-X"                   
[60] "frequencyBodyGyroscope-mean()-Y"                   
[61] "frequencyBodyGyroscope-mean()-Z"                   
[62] "frequencyBodyGyroscope-std()-X"                    
[63] "frequencyBodyGyroscope-std()-Y"                    
[64] "frequencyBodyGyroscope-std()-Z"                    
[65] "frequencyBodyGyroscope-meanFreq()-X"               
[66] "frequencyBodyGyroscope-meanFreq()-Y"               
[67] "frequencyBodyGyroscope-meanFreq()-Z"               
[68] "frequencyBodyAccelerometerMagnitude-mean()"        
[69] "frequencyBodyAccelerometerMagnitude-std()"         
[70] "frequencyBodyAccelerometerMagnitude-meanFreq()"    
[71] "frequencyBodyAccelerometerJerkMagnitude-mean()"    
[72] "frequencyBodyAccelerometerJerkMagnitude-std()"     
[73] "frequencyBodyAccelerometerJerkMagnitude-meanFreq()"
[74] "frequencyBodyGyroscopeMagnitude-mean()"            
[75] "frequencyBodyGyroscopeMagnitude-std()"             
[76] "frequencyBodyGyroscopeMagnitude-meanFreq()"        
[77] "frequencyBodyGyroscopeJerkMagnitude-mean()"        
[78] "frequencyBodyGyroscopeJerkMagnitude-std()"         
[79] "frequencyBodyGyroscopeJerkMagnitude-meanFreq()"    

[80] "Activity"             
        1 WALKING
        2 WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4 SITTING
        5 STANDING
        6 LAYING

[81] "Subject"  


### Second independent tidy data (AverageData.txt)

The values are the average of each variable for each activity and each subject.
