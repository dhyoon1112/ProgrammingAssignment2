## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function accepts a square matrix as an argument, and caches the inverse of that matrix
# This is done by setting the value of the matrix, getting the value of the matrix, setting the value of the inverse, and getting the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
  
      inv <- NULL
      set <- function(y) { 
            x <<- y
            inv <<- NULL
      }
      
      get <- function() x
      setinverse <- function(inverse) inv <<- inverse
      getinverse <- function() inv
      list(set = set
           ,get = get
           ,setinverse = setinverse
           ,getinverse = getinverse)

}


## Write a short comment describing this function
# This function solves for the inverse of the matrix returned by makeCacheMatrix. If it's available already, then the inverse is grabbed from the cache.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
      inv <- x$getinverse()
      if(!is.null(inv)) {
            message("Retrieving Cached Data")
            print(inv)
      }
  
      data <- x$get()
      inv <- mean(data, ...)
      x$setinverse(m)
      inv
  
}
