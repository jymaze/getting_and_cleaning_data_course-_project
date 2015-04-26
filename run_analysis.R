library(dplyr)
setwd('//eu.boehringer.com/users/col/users4/jmaziere/Desktop/Coursera_Data_Science/getting_cleaning_data')

####Load test data (data, labels, subjects)
if (!'test_d' %in% ls()){test_d<-read.table('UCI HAR Dataset/test/X_test.txt', sep='')} #Load test data
if (!'test_l' %in% ls()){test_l<-read.table('UCI HAR Dataset/test/y_test.txt', sep='')} #Activity labels
if (!'test_s' %in% ls()){test_s<-read.table('UCI HAR Dataset/test/subject_test.txt', sep='')} #Subjects IDs

####Load train data(data, labels, subjects)
if (!'train_d' %in% ls()){train_d<-read.table('UCI HAR Dataset/train/X_train.txt', sep='')} #Load train data
if (!'train_l' %in% ls()){train_l<-read.table('UCI HAR Dataset/train/y_train.txt', sep='')} #Activity labels
if (!'train_s' %in% ls()){train_s<-read.table('UCI HAR Dataset/train/subject_train.txt', sep='')} #Subjects IDs

####1. Merge the training and the test sets to create one data set
df_test<-cbind(test_s, test_l, test_d) #Col binding test data to one set
df_train<-cbind(train_s, train_l, train_d) #Col binding train data to one set
df<-rbind(df_test, df_train) #Row binding to one final set named df
names(df)[c(1,2)]<-c('Subject', 'Activity') #Naming first 2 columns
df<-arrange(df, Subject, Activity) #Sort by subject and activity label (number) 

####2. Extract only the measurements on the mean and standard 
####   deviation for each measurement
feat<-read.table('UCI HAR Dataset/features.txt') #Load features list
names(feat)<-c('feat_index', 'name') #Name columns
feat<-mutate(feat, name=as.character(name)) #From factor to character
feat_lim<-filter(feat, grepl('mean\\(|std\\(', feat$name)) #Select features with 'mean' or 'std'
col_lim<-feat_lim$feat_index+2 #Columns to keep by index, offset 2 added because of 2 first columns in df
col_lim<-append(c(1,2), col_lim) #Add 2 first columns to columns to keep as c(1, 2) at the beginning
df<-df[ ,col_lim] #Keep the data columns of interest in df
names(df)[3:68]<-feat_lim$name #Names for data columns extracted from features list

####3. Use descriptive activity names to name the activities in the data set
lab_act<-read.table('UCI HAR Dataset/activity_labels.txt') #Get activities names and labels
lab_act[,2]<-tolower(lab_act[,2]) #To lower case for cleaner look
df$Activity<-sapply(df$Activity, function(label) lab_act[label,2]) #Replace labels with activity names in df
df<-arrange(df, Subject, Activity) #Rearrange now that activities are strings

####4. Appropriately labels the data set with descriptive variable names
df_n<-names(df)
df_n<-sapply(df_n, function(x) gsub('-', '_', x))
df_n<-sapply(df_n, function(x) gsub('\\(\\)', '', x))
df_n<-sapply(df_n, function(x) gsub('^t', 'Time_', x))
df_n<-sapply(df_n, function(x) gsub('^f', 'Freq_', x))
df_n<-sapply(df_n, function(x) gsub('mean', 'Mean', x))
df_n<-sapply(df_n, function(x) gsub('std', 'Std', x))
names(df)<-df_n
write.table(df, 'tidy_dataset.txt', row.name=FALSE)
####5. From the data set in step 4, creates a second, independent tidy data set with the average of 
####   each variable for each activity and each subject.
df_mean<-aggregate(.~Subject+Activity, data=df, FUN=mean)
write.table(df_mean, 'tidy_dataset_mean.txt', row.name=FALSE)
