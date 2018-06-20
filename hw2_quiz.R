x1 <- 1:10
if(x1 > 5) {
  x1 <- 0
}

f <- function(x2) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x2 + g(x2)
}

x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}