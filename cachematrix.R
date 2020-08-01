## Put comments here that give an overall description of what your
## functions do

## First function creates a matrix that can cache the inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <- y
    m <- NULL
  }
  get <- function()x
  setinv <- function(solveM) m <- solveM
  getinv <- function() m
  list(set =set, get=get, setinv=setinv, getinv = getinv)
}


## Second function solves the inverse of the matrix that is comes from makeCacheMatrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m = x$getinv()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
