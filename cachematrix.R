## The following functions are used cache the inverse of an matrix.

## The below function creates a special "matrix" which is a list containing a function  10
## 1 - set value of matrix.
## 2 - get the value of matrix.
## 3 - set the value of the inverse of the matrix.
## 4 - get the value of the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## The following function (cacheSolve) calculates the inverse of matrix created above.

cacheSolve <- function(x, ...) {
        
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
        
}


