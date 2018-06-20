complete <- function(directory, id = 1:332) {
  df <- data.frame(matrix(nrow=0,ncol=2))
  names(df) <- c("id", "nobs")
  
  paths <- sprintf("%03d.csv", id)
  curr <- 1
  
  for (i in id) {
    path <- paste(directory,paths[curr],sep="/")
    data <- read.csv(path)
    completes <- complete.cases(data)
    
    dt <- data.frame(i, nrow(data[completes,]))
    names(dt) <- c("id", "nobs")
    df <- rbind(df, dt)
    curr <- curr+1
  }
  
  df
}