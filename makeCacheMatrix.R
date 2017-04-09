makeCacheMatrix  <- function(x = matrix()) {
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