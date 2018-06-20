corr <- function(directory, threshold=0) {
  comps <- complete(directory)
  comps <- comps[comps[["nobs"]] >= threshold,]
  
  v <- numeric(nrow(comps))
  curr <- 1
  
  for (c in comps[["id"]]) {
    path <- paste(directory,sprintf("%03d.csv", c),sep="/")
    df <- read.csv(path)
    v[curr] <- cor(x=df[["sulfate"]],y=df[["nitrate"]],use="pairwise.complete.obs")
    curr <- curr + 1
  }
  
  v
}