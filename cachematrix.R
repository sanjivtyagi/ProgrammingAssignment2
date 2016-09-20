## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 
 inv = NULL
 # set vaiable
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
 # get variable
    get <- function() x
 # set inverse matrix
    setinv <- function(inverse) inv <<- inverse
 # get inverse matrix
    getinv <- function() inv
 # put all values in list
    list(set=set, get=get, setinv=setinv, getinv=getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
        inv = x$getinv()
 # it returned caching matrix    
        if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
 # calclulate inverse matrix   
    matdata <- x$get()
    inv <- solve(matdata)
    x$setinv(inv)
    return(inv)
}
