corr <- function(directory, threshold = 0) {
            corrsNum <- numeric(0)
            nobsframe <- complete(directory)
            
            nobsframe <- nobsframe[nobsframe$nobs > threshold, ]
            
            for (i in nobsframe$id) {
                  thisisit <- getmonitor(i, directory)
                  
                  # --- Assert calculate correlation between $sulfate and $nitrate
                  correlation <- c(corrsNum, cor(thisisit$sulfate, thisisit$nitrate, use = "pairwise.complete.obs"))
            }
            
            # --- Assert return value is a numeric vector of correlations
            return(correlation)
      }

#
#            fullnitrate <- append(temp[,"nitrate"], fullnitrate)
#            fullsulfate <- append(temp[,"sulfate"], fullsulfate)
#            id <- append(temp[,"ID"], id)      
#      }
#      combined <- cbind(id, fullnitrate, fullsulfate)
#      cleancheck <- complete.cases(combined[, "fullnitrate"] & combined[, "fullsulfate"])
#      cleancombined <- combined[cleancheck]
#      cleannitrate <- fullnitrate[cleancheck]
#      cleansulfate <- fullsulfate[cleancheck]
#      cleanid <- id[cleancheck]
#      cor(cleannitrate, cleansulfate)
#}
