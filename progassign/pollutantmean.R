pollutantmean <- function(directory, pollutant, id = 1:332) {
  x <- numeric(length(id))
  paths <- sprintf("%03d.csv", id)
  
  total <- 0
  num <- 0
  
  curr <- 1
  
  for (i in id) {
    path <- paste(directory,paths[curr],sep="/")
    data <- read.csv(path)
    for (v in data[[pollutant]]) {
      if (!is.na(v)) {
        total <- total + v
        num <- num + 1
      }
    }
    curr <- curr + 1
  }
  
  total/num
}