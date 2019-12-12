## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverseerse <<- NULL
  }
        
  get <- function() x
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## Write a short comment describing this function
##This function calculate the inverse of the matrix make with makeCacheMatrix
##if the matrix has already been inversed return the one from the cache.

cacheSolve <- function(x, ...) {
  ## Return inverse of x.
  inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("Returning cache matrix")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setInverse(inverse)
  inverse      
}
