pollutantmean <- function(directory, pollutant, id = 1:332) {
      full <- data.frame()
      csvnames <- list.files(directory)
      filenames <- paste(directory, "/", csvnames, sep = "")
      fullfiles <- data.frame()
      for(i in id) {
            temp <- read.csv(filenames[i])  
            full <- append(temp[,pollutant], full)
            clean <- full[ !is.na(full)]
      }
      round(mean(as.numeric(clean)), digits = 3)
}


