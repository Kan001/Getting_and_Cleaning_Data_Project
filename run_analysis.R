run_analysis <- function() {
  library(plyr)
  path_root <- "/Users/Public/UCI HAR Dataset/"
  # Get the column names for the raw data
  file_path <- paste(path_root,"features.txt",sep="")
  features_df <- read.table(file_path,sep="",strip.white=T,stringsAsFactors=F)
  col_names <- gsub("\\()","",features_df[[2]])
  # Create the test and train data sets
  lvl <- "test"
  test_df <- create_df(path_root,lvl,col_names)
  lvl <- "train"
  train_df <- create_df(path_root,lvl,col_names)
  # Create an initial version of the tidy dataset
  tidy_df <- rbind(train_df,test_df)
  # Rename coulum names and convert ativity ID to acitivity names
  tidy_df <- clean_col_data(tidy_df)
  # Find the average of each variable for each activity and each subject
  aggr_out <- aggregate(.~subject_ID+activity_ID,FUN=mean,data=tidy_df)
  file_root <- "/Users/Public/R_repo/Getting_and_Cleaning_Data_Course_Project/"
  file_path <- paste(file_root,"tidy_ds.csv",sep="")
  write.csv(aggr_out,file=file_path)
  print("aggregate data set written - run_analysis complete")
  return(tidy_df) }
create_df <- function(path_root,lvl,col_names) {
  file_path <- paste(path_root,lvl,"/X_",lvl,".txt",sep="")
  data_df <- read.table(file_path,sep="",strip.white=T,stringsAsFactors=F)
  names(data_df) <- col_names
  file_path <- paste(path_root,lvl,"/subject_",lvl,".txt",sep="")
  subj_df <- read.table(file_path,sep="",strip.white=T,stringsAsFactors=F)
  file_path <- paste(path_root,lvl,"/y_",lvl,".txt",sep="")
  act_df <- read.table(file_path,sep="",strip.white=T,stringsAsFactors=F)
  # We need unique column names for the subject and activity data frames
  names(subj_df)[1] <- "V00"; names(act_df)[1] <- "V01"
  tmp_df <- cbind(subj_df,act_df,data_df)
  col_vector <- (grepl("-std",names(tmp_df)) | grepl("-mean",names(tmp_df)) 
                 | grepl("V00",names(tmp_df)) | grepl("V01",names(tmp_df)) )
  tmp_df <- tmp_df[col_vector]
  col_vector <- grepl("-meanFreq",names(tmp_df))
  tmp_df <- tmp_df[!col_vector]               
  return(tmp_df) }
clean_col_data <- function(tidy_df){
  tidy_df$V01[tidy_df$V01 == 1L] <- "WALKING"
  tidy_df$V01[tidy_df$V01 == 2L] <- "WALKING_UPSTAIRS"
  tidy_df$V01[tidy_df$V01 == 3L] <- "WALKING_DOWNSTAIRS"
  tidy_df$V01[tidy_df$V01 == 4L] <- "SITTING"
  tidy_df$V01[tidy_df$V01 == 5L] <- "STANDING"
  tidy_df$V01[tidy_df$V01 == 6L] <- "LAYING"
  names(tidy_df)[1] <-"subject_ID" 
  names(tidy_df)[2] <-"activity_ID"
  return(tidy_df)
}