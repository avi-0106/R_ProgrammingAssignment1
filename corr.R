corr <- function(directory, threshold = 0){
  file_list <- list.files(directory,full.names = TRUE)
  corr_vector <- numeric()
  
  for(file in file_list){
    data <- read.csv(file,header = TRUE)
    data <- na.omit(data)
    nobs <- nrow(data)
    if(nobs > threshold){
      correlation_SN <- cor(data$sulfate, data$nitrate)
      corr_vector <- c(corr_vector, correlation_SN)
    }
  }
  corr_vector
}