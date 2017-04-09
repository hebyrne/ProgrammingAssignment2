cacheSolve <- function(x, ...){
  inv <- x$getinverse()  ##checks for the value of the mean
  if(!is.null(inv)){  ##if the value is not null, it gets the value
    message("getting cached data")
    return(inv)
  }
  data <- x$get()  
  inv <- solve(data)  ##if null, it recalculates the mean
  x$setinverse(inv)
  inv
}