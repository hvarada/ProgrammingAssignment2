## The following functions are used cache the inverse of an matrix.

## The below function creates a "special" matrix which is a list containing a function  10
## 1 - set value of matrix.
## 2 - get the value of matrix.
## 3 - set the value of the inverse of the matrix
## 4 - get the value of the inverse of the matrix

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
