## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library (plyr)
library (dplyr)
library (reshape2)

## 1. Merges the training and the test sets to create one data set.

## set working directory at the folder "test" 
setwd("C:/Users/rp/Documents/Clining data/course project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test")
##read the data "X_test"
X_test <- read.table("X_test.txt")

##read the data "y_test"
y_test <- read.table("y_test.txt")
colnames(y_test) <- "ID_activity"

##read the data "subject_test"

subject_test <- read.table("subject_test.txt")
colnames(subject_test) <- "ID_subject"

## set working directory at the folder "train"
setwd("C:/Users/rp/Documents/Clining data/course project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train")

##read the data "X_train"
X_train <- read.table("X_train.txt")


##read the data "y_train"
y_train <- read.table("y_train.txt")
colnames(y_train) <- "ID_activity"

##read the data "subject_train"
subject_train <- read.table("subject_train.txt")
colnames(subject_train) <- "ID_subject"

## set working directory at the folder "UCI HAR Dataset"
setwd("C:/Users/rp/Documents/Clining data/course project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")

##read the data "features".
features <- read.table("features.txt")


## Subset features
feat_names <- features[,2]


## Attach names to X_test and X_train
colnames(X_test) <- feat_names
colnames(X_train) <- feat_names
      
##Merge test data
test <- cbind(subject_test, y_test, X_test)
dim(test)

## Merge train data
train <- cbind(subject_train, y_train, X_train)
dim(train)

## Merge all data  
data <- rbind(test, train)
dim(data)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
        mean_d <- grep("mean",names(data),ignore.case=TRUE)
        
        std_d <- grep("std",names(data),ignore.case=TRUE)
        
## 3. Uses descriptive activity names to name the activities in the data set
mean_d_names <- names(data)[mean_d]
std_d_names <- names(data)[std_d]
data_meanstd <-data[,c("ID_subject","ID_activity",mean_d_names,std_d_names)]

## Read data activity lables
data_activity_l <- read.table("activity_labels.txt", col.names=c("ID_activity","activity_name"))
head(data_activity_l)
dim(data_activity_l)

## 4. Appropriately labels the data set with descriptive variable names.
descr_nam <- merge(data_activity_l,data_meanstd,by.x="ID_activity",by.y="ID_activity",all=TRUE)

##Melt the dataset with the descriptive activity names 
melt <- melt(descr_nam,id=c("ID_activity","activity_name","ID_subject"))

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

final_data <- dcast(melt,ID_activity + activity_name + ID_subject ~ variable,mean)

## Create tidy data set as a txt file. 
write.table(final_data,"C:/Users/rp/Documents/Clining data/course project/final_data.txt")

