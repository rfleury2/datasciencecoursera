complete <- function(directory, id = 1:332) {
      byid <- data.frame()
      clean <- data.frame()
      csvnames <- list.files(directory)
      filenames <- paste(directory, "/", csvnames, sep = "")
      fullfiles <- data.frame()
      for(i in id) {
            temp <- read.csv(filenames[i])
            clean <- complete.cases(temp)
            fullfiles <- temp[clean,]
            byid <- rbind(byid, c(i, nrow(fullfiles)))
      }
      x <- data.frame(byid[,1], byid[,2])
      colnames(x) <- c("id", "nobs")
      x
}