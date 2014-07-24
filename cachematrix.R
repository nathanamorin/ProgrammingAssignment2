## These functions provide a way to cache the inverse of a data element
## and automatically eather get values from cache or calculate new values and put into cache.

## This function takes a matrix and provides the handling functions to get & set the matrix & mean

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y=matrix()){
                x <<- y
                m <<- NULL
        }
        
        get <- function(){
                x
        }
        
        setmean <- function(mean){
                m <<- mean
        }
        
        getmean <- function(){
                m
        }
        
        list(set=set,
             get=get,
             setmean=setmean,
             getmean=getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
