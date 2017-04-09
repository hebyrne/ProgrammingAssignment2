## This pair of functions cache the inverse of a matrix rather than 
## compute it repeatedly

## This function creates a special matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) { ##sets the value of the vector 
    x <<- y
    inv <<- NULL
  }
  get <- function() x  ##creates a matrix
  setinverse <- function(inverse) inv <<- inverse  ## sets inverse
  getinverse <- function() inv  ## gets inverse
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function computes the inverse of the sepcial matrix
## returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
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
