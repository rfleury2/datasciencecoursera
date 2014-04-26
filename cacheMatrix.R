# This function calculates and caches the inverse of a matrix

## The function below creates takes a matrix and sets its inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y) {
            x <<- y
            inv <<- NULL
      }
      get <- function() x
      setinv <- function(solve) inv <<- solve(x)
      getinv <- function() inv
      list(set = set, get = get,
           setinv = setinv,
           getinv = getinv)
}


## The function below determine whether an inverse matrix has been set and returns its value.  
## If not set, it calls the MakeCacheMatrix function to set the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inv <- x$getinv()
      if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
      }
      data <- x$get()
      inv <- x$setinv(data)
      inv
}
