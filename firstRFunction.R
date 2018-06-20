y <- 6
add2 <- function(x, y) {
  x+y
}

above10 <- function(v) {
  condition <- v > 10
  v[condition]
}

above <- function(vector, extrema = 10) {
  condition <- vector > extrema
  vector[condition]
}

colMean <- function(df, removeNA = TRUE) {
  nc <- ncol(df)
  means <- numeric(nc)
  
  for (i in 1:nc) {
    means[i] <- mean(df[,i], na.rm = removeNA)
  }
  
  means
}

plus <- function(x) {
  add <- function() {
    y<-5
    x+y
  }
  add
}