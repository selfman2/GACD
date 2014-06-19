### script for preparing/tidying data; see accompanying ReadMe.md and Cookbook.md for detailed info

### 0.
library(futile.matrix)

### 1.
### data could be obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
### zipped data file should reside in R's working directory 
unzip("getdata_projectfiles_UCI HAR Dataset.zip")

### 2.
caption_1<-as.matrix(read.table("UCI HAR Dataset//features.txt"))

subject_train<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt",col.names=c("subject"))
X_train<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt",col.names=caption_1[,2])
y_train<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt",col.names=c("activity"))

subject_test<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt",col.names=c("subject"))
X_test<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",col.names=caption_1[,2])
y_test<-read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt",col.names=c("activity"))

### 3.
ds_train<-cbind(subject_train,y_train,X_train)
ds_test<-cbind(subject_test,y_test,X_test)

ds_full<-rbind(ds_train,ds_test)

### 4.
temp_subject<-select(ds_full,col.pat='subject')
temp_activity<-select(ds_full,col.pat='activity')
temp_mean<-select(ds_full,col.pat='[Mm][Ee][Aa][Nn]')
temp_std<-select(ds_full,col.pat='[Ss][Tt][Dd]')

ds<-cbind(temp_subject,temp_activity,temp_mean,temp_std)


### 5.
activity_l<-read.table("UCI HAR Dataset//activity_labels.txt")
merge_temp<-merge(activity_l,ds,by.x="V1",by.y="activity")
merge_result_temp<-merge_temp[,2:length(colnames(merge_temp))]

### 6.
merged_result_final<-aggregate(.~V2+subject,FUN=mean,data=merge_result_temp)

### 7.
my_colnames<-colnames(merged_result_final)
my_colnames<-gsub('^V2$',"activity",my_colnames)
my_colnames<-gsub('angle.X.gravityMean',"Angle_X_Gravity___Mean",my_colnames,perl=T)
my_colnames<-gsub('angle.Y.gravityMean',"Angle_Y_Gravity___Mean",my_colnames,perl=T)
my_colnames<-gsub('angle.Z.gravityMean',"Angle_Z_Gravity___Mean",my_colnames,perl=T)
my_colnames<-gsub('angle.tBodyAccMean.gravity.',"Angle_TimeSignal_BodyAcceleration_Gravity___Mean",my_colnames,perl=T)
my_colnames<-gsub('angle.tBodyAccJerkMean..gravity.',"Angle_TimeSignal_BodyAccelerationJerkMean_Gravity___Mean",my_colnames,perl=T)
my_colnames<-gsub('angle.tBodyGyroMean.gravityMean.',"Angle_TimeSignal_BodyGyroscopeMean_Gravity___Mean",my_colnames,perl=T)
my_colnames<-gsub('angle.tBodyGyroJerkMean.gravityMean.',"Angle_TimeSignal_BodyGyroscopeJerkMean_GravityMean",my_colnames,perl=T)
my_colnames<-gsub('^t',"TimeSignal_",my_colnames,perl=T)
my_colnames<-gsub('^f',"FrequencySignal_",my_colnames,perl=T)
my_colnames<-gsub('.mean...X$',"_in_X_Axis___Mean",my_colnames,perl=T)
my_colnames<-gsub('.mean...Y$',"_in_Y_Axis___Mean",my_colnames,perl=T)
my_colnames<-gsub('.mean...Z$',"_in_Z_Axis___Mean",my_colnames,perl=T)
my_colnames<-gsub('.mean..$',"___Mean",my_colnames,perl=T)
my_colnames<-gsub('.std...X$',"_in_X_Axis___StandardDeviation",my_colnames,perl=T)
my_colnames<-gsub('.std...Y$',"_in_Y_Axis___StandardDeviation",my_colnames,perl=T)
my_colnames<-gsub('.std...Z$',"_in_Z_Axis___StandardDeviation",my_colnames,perl=T)
my_colnames<-gsub('.std..$',"___StandardDeviation",my_colnames,perl=T)
my_colnames<-gsub('.meanFreq...X$',"_in_X_Axis___MeanOfFrequency",my_colnames,perl=T)
my_colnames<-gsub('.meanFreq...Y$',"_in_Y_Axis___MeanOfFrequency",my_colnames,perl=T)
my_colnames<-gsub('.meanFreq...Z$',"_in_Z_Axis___MeanOfFrequency",my_colnames,perl=T)
my_colnames<-gsub('.meanFreq..$',"___MeanOfFrequency",my_colnames,perl=T)
my_colnames<-gsub('BodyGyro',"of_BodyGyroscope",my_colnames,perl=T)
my_colnames<-gsub('GravityAcc',"of_GravityAcceleration",my_colnames,perl=T)
my_colnames<-gsub('BodyAcc',"of_BodyAcceleration",my_colnames,perl=T)
my_colnames<-gsub('Mag',"_Magnitude_",my_colnames,perl=T)
my_colnames<-gsub('_Bodyof_',"_of_",my_colnames,perl=T)

colnames(merged_result_final)<-my_colnames




### 8.
write.table(merged_result_final,"UCI_HAR_dataset___tidy.txt",sep="\t",eol="\n",row.names=F)



