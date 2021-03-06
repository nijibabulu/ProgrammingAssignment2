## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates a matrix "class" that may 
# contain the inverse of the matrix upon computation
# (in the function below)

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set=set,get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function
# This function checks the cache of the matrix "class"
# to see if it already has a computed inverse.
# if not it computes the inverse and caches the solution.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message('returning cached data')
    return(m)    
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}

