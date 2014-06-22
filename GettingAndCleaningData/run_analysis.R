run_analysis = function() {
      
      ## Read all files - assumes all files are placed in the same directory
      X_test <- read.table("X_test.txt")
      X_train <- read.table("X_train.txt")
      y_test <- read.table("y_test.txt")
      y_train <- read.table("y_train.txt")
      subject_test <- read.table("subject_test.txt")
      subject_train <- read.table("subject_train.txt")
      
      ##  Takes labels from "features" and applies to test/train files
      labelfile <- read.table("features.txt")
      colnames(X_test) <- labelfile[,2]
      colnames(X_train) <- labelfile[,2]
      
      ## Assigns column names to subjects and activities
      colnames(y_test) <- "ActivityDescription"
      colnames(y_train) <- "ActivityDescription"
      colnames(subject_test) <- "SubjectCode"
      colnames(subject_train) <- "SubjectCode"
      
      ## Merges each train and test files with each other...
      fulltrain <- cbind(subject_train, y_train, X_train)
      fulltest <- cbind(subject_test, y_test, X_test)
      
      ## ... and merges train and test datasets together
      fullset <- rbind(fulltrain, fulltest)
      fullset[,"SubjectCode"] <- as.factor(fullset[,"SubjectCode"])
      
      ## Assign activity names based on key-value pairs
      activitylabels <- read.table("activity_labels.txt")
      fullset[,"ActivityDescription"] <- as.factor(fullset[,"ActivityDescription"])
      levels(fullset[,"ActivityDescription"]) <- activitylabels[,2]
      
      ## Keep only mean() and std() columns from fullset
      indices <- grep("mean\\(\\)|std\\(\\)", names(fullset))
      tidyset <- fullset[, c(1, 2, indices)]
      
      ## Write to txt file
      write.table(tidyset, "tidyset.txt")
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
}