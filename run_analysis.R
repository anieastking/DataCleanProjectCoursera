run_analysis<-function(directory){
  library(dplyr)
  #1.......Merging the tiresome datasets/////
   X_train<-read.table("C:/Users/hp/Documents/datascience/UCI/train/X_train.txt")
   y_train<-read.table("C:/Users/hp/Documents/datascience/UCI/train/y_train.txt")
   subject_train<-read.table("C:/Users/hp/Documents/datascience/UCI/train/subject_train.txt")
 #  print(subject_train)
   
   X_test<-read.table("C:/Users/hp/Documents/datascience/UCI/test/X_test.txt")
   y_test<-read.table("C:/Users/hp/Documents/datascience/UCI/test/y_test.txt")
   subject_test<-read.table("C:/Users/hp/Documents/datascience/UCI/test/subject_test.txt")
   ##print(subject_test)
   ##joining data
   X_joined<-rbind(X_train,X_test)
   y_joined<-rbind(y_train,y_test)
   
   subject_joined<-rbind(subject_train,subject_test)
   
   
   #2...read the features table and extract mean and standard deviation data
   
   features<-read.table("C:/Users/hp/Documents/datascience/UCI/features.txt")
   
   
   ###now the main thing,,,,get indices of only that from features that has mean or std in it as substrings
   ##
   reqd_features<-grep("-(mean|std)",features[,2])
   
   ##subsetting of X_joined
   
   X_joined<-X_joined[,reqd_features]
   
   ##replace column names
   names(X_joined)<-features[reqd_features,2]
   
   #3..Replace integers by names in y_joined
   
   act_labels<-read.table("C:/Users/hp/Documents/datascience/UCI/activity_labels.txt")
   
   y_joined[,1]<-act_labels[y_joined[,1],2]
   
   print("hi...IF u are reading this then it means U have done it correctly!!!")
   #4....name datasets
   names(y_joined)<-"Activity_name"
   names(subject_joined)<-"Subject_number"
   
   full_dataset<-cbind(X_joined,y_joined,subject_joined)
   
   ##5...
         ##     making tidy data set and creating TXT FILE
   tidy<-aggregate(k[,1:66],list(k$Activity_name,k$Subject_number),mean)
   write.table(tidy,"C:/Users/hp/Documents/datascience/UCI/final_clean_dataset.txt",row.names = FALSE,sep="\t")
   
  
}
