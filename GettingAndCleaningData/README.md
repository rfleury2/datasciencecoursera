Read Me
========================================================

There is one single script - r_analysis.R

1 - Starts by reading each of the files with read.table
2 - Reads the column labels file (read.table()) and assigns those values to the column names of X_test" and X_train
3 - Assigns "ActivityDescription" and "SubjectCode" labels to the appropriate columns
4 - Assembles both train and test data set by merging each of the train/test files
5 - Merges the train and test data set by appending test to train
6 - Assigns activity labels based on the activity_labels.txt key-value pairs
7 - Creates indeces for the columns to keep based on whether the terms mean() or std() are present in the column names.  Includes 1 and 2 as the "ActivityDescription" and "SubjectCode"
8 - Trims fullset to keep only rows matched with the indeces created
9 - Writes result to a .txt file

