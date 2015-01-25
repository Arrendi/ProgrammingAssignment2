cacheSolve <- function(x=matrix(), ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached inverse data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}