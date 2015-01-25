# R Programming - Assignment 2 
# Assignment: Caching the Inverse of a Matrix
#Write the following functions:
#makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
#cacheSolve: This function computes the inverse of the special "matrix" returned by
# makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not 
#changed), then the cachesolve should retrieve the inverse from the cache.
#Computing the inverse of a square matrix can be done with the solve function in R. 
#For example, if X is a square invertible matrix, then solve(X) returns its inverse.
#For this assignment, assume that the matrix supplied is always invertible.

# ----------------------------------------------------------------

makeCacheMatrix <- function(x = matrix()) {
#This function creates a cache matrix if it does not exist, otherwise returns the original inverse matrix
    # Input: x (as a matrix)
    # Output: cacheInv (as a matrix)
    #  set: receives input (y) in matrix form, stores in cache x
    #  get: returns contents of cache x
    #  setinverse: sets the cache inverse value 
    #  getinverse: returns the cache inverse value 
  

    # initialize inverse
    cacheInv <- NULL
    
    # store new matrix into cache location & clears the inverse
    set <- function(y) {
      x <<- y
      cacheInv <<- NULL
    }
    
    # get, retrieves matrix x
    get <- function() x
    
    setinverse<- function(inverse) cacheInv <<- inverse
    
    getinverse <- function() cacheInv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}
  
# ----------------------------------------------------------------
  
cacheSolve <- function(x, ...) {

    # Takes a matrix 'x' and calculates the matrix inverse i. If the inverse has already been calculated 
    # (and the matrix has not changed), then retrieves the inverse from the cache 
    # For this assignment, assume that the matrix supplied is always invertible
    # Input: x (matrix)
    # Output: i (matrix), inverse of x    
    
    inv <- x$getinverse()
    # if the inverse has been cached, return that matrix
    if(!is.null(inv)) {
      message("getting cached data")
      # return cached matrix
      return(inv)  # this exits the function
    }
    # calculate inverse & return inverse matrix
    mtrx <- x$get()
    
    i <- solve(mtrx, ...)
    # caches inverse matrix, then returns the value
    x$setinverse(i)
    return(i)
  
}
