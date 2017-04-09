cachemean <- function(x, ...){
  m <- x$getmean()  ##checks for the value of the mean
  if(!is.null(m)){  ##if the value is not null, it gets the value
    message("getting cached data")
    return(m)
  }
  data <- x$get()  
  m <- mean(data, ...)  ##if null, it recalculates the mean
  x$setmean(m)
  m
}