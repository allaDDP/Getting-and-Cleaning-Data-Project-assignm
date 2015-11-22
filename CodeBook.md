

---
title: "CodeBook"
author: "Alla"
date: "22 de Novembro de 2015"
output: html_document
---

###FINAL_DATA.txt
+
+
###Data 
+=================
+
+This data frame came from the transformation of the data "Human Activity Recognition Using Smartphones Dataset Version 1.0".
The dats was created on the information taken from the experiments with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
### Variables


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
+
+These signals were used to estimate variables of the feature vector for each pattern:  
+'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
+
+tBodyAcc-XYZ
+tGravityAcc-XYZ
+tBodyAccJerk-XYZ
+tBodyGyro-XYZ
+tBodyGyroJerk-XYZ
+tBodyAccMag
+tGravityAccMag
+tBodyAccJerkMag
+tBodyGyroMag
+tBodyGyroJerkMag
+fBodyAcc-XYZ
+fBodyAccJerk-XYZ
+fBodyGyro-XYZ
+fBodyAccMag
+fBodyAccJerkMag
+fBodyGyroMag
+fBodyGyroJerkMag
+
+angle(): Angle between two vectors.
+
+Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
+
+gravityMean
+tBodyAccMean
+tBodyAccJerkMean
+tBodyGyroMean
+tBodyGyroJerkMean
+
+
+Feature Vector variables:
+=========================
+
+mean() : 		mean values of the original variables.
+     Type: Real number		
+		
+std(): 		Standard deviation of the original variables.
+			Type: Real number
+
+ID_subject:	Number of subject (ID of subject)
+			Type: 	Integer
+			Values: 	1 : 30
+
+ID_activity: 	Number of activity 
+			Type: 	Integer
+			Values: 	1 : 6
+
+activity_name: 	Descriptive name of each subject's activity
+			Type: 	Factor
+			Values: 	WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, 		+			LAYING
+1 - WALKING
+2 - WALKING_UPSTAIRS
+3 - WALKING_DOWNSTAIRS
+4 - SITTING
+5 - STANDING
+6 - LAYING

+
###Transformations or work performed to clean up the data called FINAL_DATA
+ The training and the test sets were merged to create one data set.
+ The mean and standard deviation for each measurement were extracted. 
+ Descriptive activity names were used to name the activities in the data set
+ Appropriately labels were given to the data set with descriptive variable names. 
+ Independent final tidy data set with theaverage of each variable for each activity + and each subject was created.

