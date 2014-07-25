##Created by Nathan Morin nathanmorin.com @nathanamorin
##Copyright 2014 Creative Commons Attribution-NonCommercial 4.0 International
## These functions provide a way to cache the inverse of a data element
## and automatically eather get values from cache or calculate new values and put into cache.

## This function takes a matrix and provides the handling functions to get & set the matrix & inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        
        ##Set new matrix
        set <- function(y=matrix()){
                x <<- y
                i <<- NULL
        }
        
        ##Get the matrix
        get <- function(){
                x
        }
        
        ##Set the inverse of the matrix
        setinverse <- function(inverse){
                i <<- inverse
        }
        
        ##Get the inverse of the matrix
        getinverse <- function(){
                i
        }
        
        ##Return a list of the handler functions
        list(set=set,
             get=get,
             setinverse=setinverse,
             getinverse=getinverse)
}


## This takes x, a list made from makeCacheMatrix.
## It will then return the inverse of x,
## retrieving the value from cache or calculating a new value and placing that value in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        
        ##Ckeck if data is in cache, if it is return the data
        if(!is.null(inverse)){
                message("Inverse retrieved from cache")
                return(inverse)
        }
        
        ##If the data is not in the cache, calculate the inverse, storing that value in x
        message("Calculating new inverse")
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        
        ##Return the newly calculated data
        inverse
}











