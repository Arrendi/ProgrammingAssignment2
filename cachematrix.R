## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
}

#The makeCacheMatrix creates a list containing a function which will
#1 set the value of the matrix
#2 get the value of the matrix
#3 set the value of the inverse of the matrix
#4 get the value of the inverse of the matrix

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached inverse data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}

#The above function will return the inverse of the matrix. First it checks if the
#inverse has already been computed. Then, it gets the results and skips the computation
#If not, it computes the inverse sets the value of the cache through the setinverse 
#function.

sample run:
  x = rbind(c(1, -1/4), c(-1/4, 1))
> m = makeCacheMatrix(x)
> m$get()
[,1]  [,2]
[1,]  1.00 -0.25
[2,] -0.25  1.00
> 
> cacheSolve(m)
[,1]      [,2]
[1,] 1.0666667 0.2666667
[2,] 0.2666667 1.0666667
> cacheSolve(m)
getting cached inverse data
[,1]      [,2]
[1,] 1.0666667 0.2666667
[2,] 0.2666667 1.0666667
