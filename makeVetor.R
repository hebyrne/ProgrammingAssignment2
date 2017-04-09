makeVector <- function(x=numberic()) {
    m <- NULL
    set <- function(y) { ##sets the value of the vector 
              x <<- y
              m <<- NULL
    }
    get <- function() x  ## gets the value of the vector
    setmean <- function(mean) m <<- mean  ## sets the value of the mean
    getmean <- function() m  ## gets the value of the mean
    list(set = set, get = get, setmean = setmean, getmean = getmean)
}