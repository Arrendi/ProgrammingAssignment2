## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

#The makeCacheMatrix creates a list containing a function which will
#1 set the value of the matrix
#2 get the value of the matrix
#3 set the value of the inverse of the matrix
#4 get the value of the inverse of the matrix

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

#The above function will return the inverse of the matrix. First it checks if the
#inverse has already been computed. Then, it gets the results and skips the computation
#If not, it computes the inverse sets the value of the cache through the setinverse 
#function.