getmonitor <- function(id, directory, summarize = FALSE) {
      # --- Assert 'id' is a vector of length 1 indicating the monitor ID
      # number. The user can specify 'id' as either an integer, a character, or
      # a numeric.  'directory' is a character vector of length 1 indicating the
      # location of the CSV files 'summarize' is a logical indicating whether a
      # summary of the data should be printed to the console; the default is
      # FALSE
      
      # --- Assert construct file name Directory is pre-appended to file name.
      # Use sprintf() to add leading zeroes.  E.g. 'specdata/001.csv'
      fileStr <- paste(directory, "/", sprintf("%03d", as.numeric(id)), ".csv", 
                       sep = "")
      
      # --- Assert read csv
      rawDfr <- read.csv(fileStr)
      
      # --- Assert summary if true
      if (summarize) {
            print(summary(rawDfr))
      }
      
      # --- Return value is a data frame
      return(rawDfr)
}