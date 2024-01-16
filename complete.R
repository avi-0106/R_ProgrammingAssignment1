complete <- function(directory, id = 1:332){
  file_list <- list.files(directory,full.names = TRUE)
  final_df <- data.frame()
  for(i in id){
    tmp_data <- read.csv(file_list[i],header=TRUE)
    tmp_data <- na.omit(tmp_data)
    nobs <- nrow(tmp_data)
    final_df <- rbind(final_df,data.frame(i,nobs))
  }
  return(final_df)
}