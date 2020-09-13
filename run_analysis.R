fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./UCI HAR Dataset.zip")
unzip("./UCI HAR Dataset.zip")

X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

ActivityLabels<-read.table("./UCI HAR Dataset/activity_labels.txt")

## Training and the test sets merged.

Data<-rbind(X_train,X_test)

Features<-read.table("./UCI HAR Dataset/features.txt")

colnames(Data)<-Features$V2

## Mean and standard deviation for each measurement. 

Data1<-Data[grepl("mean|std",colnames(Data))]


## Descriptive activity names

Train<-cbind(y_train,subject_train)
Test<-cbind(y_test,subject_test)
T.1<- rbind(Train,Test)
colnames(T.1)<- c("Activity","Subject")

Data1<-cbind(Data1,T.1)

Data1$Activity<-factor(Data1$Activity,labels = ActivityLabels$V2)

## Descriptive variable names

colnames(Data1)<-gsub("^t", "time", colnames(Data1))
colnames(Data1)<-gsub("^f", "frequency", colnames(Data1))
colnames(Data1)<-gsub("Acc", "Accelerometer", colnames(Data1))
colnames(Data1)<-gsub("Gyro", "Gyroscope", colnames(Data1))
colnames(Data1)<-gsub("Mag", "Magnitude", colnames(Data1))
colnames(Data1)<-gsub("BodyBody", "Body", colnames(Data1))

## Average of each variable for each activity and each subject.

library(plyr)
AverageData <-aggregate(. ~Subject + Activity, Data1, mean)

write.table(AverageData, file = "AverageData.txt",row.name=FALSE)
