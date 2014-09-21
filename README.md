projetcgcd
==========

Proyect for coursera get and cleaning data

"run_analysis.r" It has a feature called run_analysis without parameters, returns a data.frame with a tidy data set with the average of each varying for each activity and each subject. 

The data.frame atributes are this:

 [1] "id_sub"                              "id_actv"                            
 [3] "AV_ tBodyAcc-mean()-X"               "AV_ tBodyAcc-mean()-Y"              
 [5] "AV_ tBodyAcc-mean()-Z"               "AV_ tBodyAcc-std()-X"               
 [7] "AV_ tBodyAcc-std()-Y"                "AV_ tBodyAcc-std()-Z"               
 [9] "AV_ tGravityAcc-mean()-X"            "AV_ tGravityAcc-mean()-Y"           
[11] "AV_ tGravityAcc-mean()-Z"            "AV_ tGravityAcc-std()-X"            
[13] "AV_ tGravityAcc-std()-Y"             "AV_ tGravityAcc-std()-Z"            
[15] "AV_ tBodyAccJerk-mean()-X"           "AV_ tBodyAccJerk-mean()-Y"          
[17] "AV_ tBodyAccJerk-mean()-Z"           "AV_ tBodyAccJerk-std()-X"           
[19] "AV_ tBodyAccJerk-std()-Y"            "AV_ tBodyAccJerk-std()-Z"           
[21] "AV_ tBodyGyro-mean()-X"              "AV_ tBodyGyro-mean()-Y"             
[23] "AV_ tBodyGyro-mean()-Z"              "AV_ tBodyGyro-std()-X"              
[25] "AV_ tBodyGyro-std()-Y"               "AV_ tBodyGyro-std()-Z"              
[27] "AV_ tBodyGyroJerk-mean()-X"          "AV_ tBodyGyroJerk-mean()-Y"         
[29] "AV_ tBodyGyroJerk-mean()-Z"          "AV_ tBodyGyroJerk-std()-X"          
[31] "AV_ tBodyGyroJerk-std()-Y"           "AV_ tBodyGyroJerk-std()-Z"          
[33] "AV_ tBodyAccMag-mean()"              "AV_ tBodyAccMag-std()"              
[35] "AV_ tGravityAccMag-mean()"           "AV_ tGravityAccMag-std()"           
[37] "AV_ tBodyAccJerkMag-mean()"          "AV_ tBodyAccJerkMag-std()"          
[39] "AV_ tBodyGyroMag-mean()"             "AV_ tBodyGyroMag-std()"             
[41] "AV_ tBodyGyroJerkMag-mean()"         "AV_ tBodyGyroJerkMag-std()"         
[43] "AV_ fBodyAcc-mean()-X"               "AV_ fBodyAcc-mean()-Y"              
[45] "AV_ fBodyAcc-mean()-Z"               "AV_ fBodyAcc-std()-X"               
[47] "AV_ fBodyAcc-std()-Y"                "AV_ fBodyAcc-std()-Z"               
[49] "AV_ fBodyAcc-meanFreq()-X"           "AV_ fBodyAcc-meanFreq()-Y"          
[51] "AV_ fBodyAcc-meanFreq()-Z"           "AV_ fBodyAccJerk-mean()-X"          
[53] "AV_ fBodyAccJerk-mean()-Y"           "AV_ fBodyAccJerk-mean()-Z"          
[55] "AV_ fBodyAccJerk-std()-X"            "AV_ fBodyAccJerk-std()-Y"           
[57] "AV_ fBodyAccJerk-std()-Z"            "AV_ fBodyAccJerk-meanFreq()-X"      
[59] "AV_ fBodyAccJerk-meanFreq()-Y"       "AV_ fBodyAccJerk-meanFreq()-Z"      
[61] "AV_ fBodyGyro-mean()-X"              "AV_ fBodyGyro-mean()-Y"             
[63] "AV_ fBodyGyro-mean()-Z"              "AV_ fBodyGyro-std()-X"              
[65] "AV_ fBodyGyro-std()-Y"               "AV_ fBodyGyro-std()-Z"              
[67] "AV_ fBodyGyro-meanFreq()-X"          "AV_ fBodyGyro-meanFreq()-Y"         
[69] "AV_ fBodyGyro-meanFreq()-Z"          "AV_ fBodyAccMag-mean()"             
[71] "AV_ fBodyAccMag-std()"               "AV_ fBodyAccMag-meanFreq()"         
[73] "AV_ fBodyBodyAccJerkMag-mean()"      "AV_ fBodyBodyAccJerkMag-std()"      
[75] "AV_ fBodyBodyAccJerkMag-meanFreq()"  "AV_ fBodyBodyGyroMag-mean()"        
[77] "AV_ fBodyBodyGyroMag-std()"          "AV_ fBodyBodyGyroMag-meanFreq()"    
[79] "AV_ fBodyBodyGyroJerkMag-mean()"     "AV_ fBodyBodyGyroJerkMag-std()"     
[81] "AV_ fBodyBodyGyroJerkMag-meanFreq()"



id_actv
------------
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

id_sub
------------
(1-30) id of subjetct

AV_*
--------------
average of all variables with mean and std of the original data collected for each activity and subject


The description of the data source is located at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


Example
==========
 
source("run_analysis.R")

r<-run_analysis()

write.table(r,"tidy_data.txt",row.name=FALSE )





