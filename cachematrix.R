## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  abc <- function(y){
        x <<- y
        inv <<- NULL
  }
  abv <- function() {
        x
  }
  abcInverse <- function(itog) {
        a <<- itog
  }
  abvInverse <- function() {
        a
  }
  list(abc = abc, abv = abv, abcInverse = abcInverse, abvInverse = abvInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
        message("getting cached data")
        return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
