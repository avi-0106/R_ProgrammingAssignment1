pollutantmean <- function(directory,pollutant,id = 1:332){
  file_list <- list.files(directory,full.names = TRUE)
  pollutant_vector <- numeric()
  for(file in file_list){
    data <- read.csv(file)
    filtered_data <- data[data$ID %in% id,]
    # Now we collect the Pollutant column without any NA value! 
    pollutant_data <- filtered_data[!is.na(filtered_data[pollutant]),pollutant]
    # Adding all the pollutant data into a single vector
    pollutant_vector <- c(pollutant_vector,pollutant_data)
  }
  meanPollutant <- mean(pollutant_vector)
  meanPollutant
}




