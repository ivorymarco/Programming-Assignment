

## makeCacheMatrix is a function that returns a list of functions

## It has the purpose of storing a matrix and a cached value of the inverse of the matrix.

## It contains the functions setMatrix, getMatrix, cacheInverse and getInverse

makeCacheMatrix <- function(x = matrix()) {
  
  ## initially, nothing is cached, so set it to null
  
  cache <- NULL
  
  ## store matrix
  
  setMatrix <- function(newValue) {
    x <<- newValue
    
  ## matrix is given a new value so the cache will be flushed
    
    cache <<- NULL
}
  
  ## return the stored matrix
  
  getMatrix <- function() {
    x
}

  ## cache the given argument
  
  cacheInverse <- function(solve) {
    cache <<- solve
}
  
  ## obtain cached value
  
  getInverse <- function() {
    cache
}
  
  ## return list. Each of the named elements of the list is a function
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


  ## CacheSolve is the function that calculates the inverse of a matrix created with makeCacheMatrix


cacheSolve <- function(x, ...) {
  
  ## ontain cached value
  
  inverse <- x$getInverse()
  
  ## if cached value exists, return cached value
  
  if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
}
  
  ## if cached value does not exist, get the matrix and calculate the inverse
  ## then, store it in the cache
  
  data <- y$getMatrix()
  
  inverse <- solve(data)
  
  y$cacheInverse(inverse)
  
  ## return the inverse
  
  inverse
  
}
        ## Return a matrix that is the inverse of 'x'
}
