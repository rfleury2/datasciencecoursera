pollutantmean <- function(directory, pollutant, id = 1:332) {
      pollutantdata <- data.frame()
      counter <- 0
      temp <- data.frame()
      csvnames <- list.files(directory)
      filenames <- paste(directory, csvnames, sep = "/")
      # for(i in id) {
      #       temp <- read.csv(filenames[i], header = TRUE)
      #       pollutantdata <- rbind(pollutantdata, temp)
      # }
      complete.cases(globaldata)
      colMeans(globaldata[pollutant], na.rm = TRUE)
}


