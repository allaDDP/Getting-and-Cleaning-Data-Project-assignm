# Getting-and-Cleaning-Data-Project-assignm
+===================
+Run_Analysis.R R-script 
+data:
+Human Activity Recognition Using Smartphones Dataset
+Version 1.0
+====================
+by Alla Kolyban
+====================
+
+The run_analysis.R script reads data from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" and creates a tidy - dataset which may be used for later analysis.

+ Description of the script:
+==================================
+- It reads all .txt files, features and labels the datasets
+
+- The "cbind" and "rbind" functions are used to merge test and training data with appropriate names.
+
+- The columns with mean() and std() values are extracted using the "grep" function.   
+
+- Descriptive activity names are merged with the mean and std values dataset to get one dataset with descriptive activity names using the "merge" function, 
+
+- The data is converted into a table containing mean values of all the included features, ordered by the activity name and the ID_subject with the help of the "melt" and "dcast" functions, 
+- The data is written to the "final_data.txt" file.
+
+ The data in the "Human Activity Recognition Using Smartphones Dataset Version 1.0" have been taken from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz data were captured. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
+
+
+ The original dataset included the following data files:
+====================
+- 'features.txt': List of all features.
+
+- 'activity_labels.txt': List of class labels and their activity name.
+
+- 'train/X_train.txt': Training set.
+
+- 'train/y_train.txt': Training labels.
+
+- 'train/subject_train.txt': ID's of subjects in the training data
+
+- 'test/X_test.txt': Test set.
+
+- 'test/y_test.txt': Test labels.
+
+- 'test/subject_test.txt': ID's of subjects in the training data
+
+For more information about the "Human Activity Recognition Using Smartphones Dataset Version 1.0" contact: activityrecognition@smartlab.ws
+
