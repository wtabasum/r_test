## We have two functions (makeCachematrix and cacheSolve) to get matrix and inverse. 

## With function makeCacheMatrix we will the matrix 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL ## initializing inverse as NULL
  set <- function(y) {
    inv <<- NULL
  }
get <- function () x ## function to get x matrix 
setinv <- function(inverse) inv<<-inverse
getinv <- function () {
                        inver <- ginv(x)
                        inver%%x
list(set = set, get = get, 
     setinv = setinv, 
     getinv = getinv)
}

## with function cacheSolve we will get the inverse of x

cacheSolve <- function(x, ...) {
  inv <- x$getinv()  ## gets cache data
  if(!is.null(inv)) ## checking whether inverse is null
    {    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
        ## Return a matrix that is the inverse of 'x'


