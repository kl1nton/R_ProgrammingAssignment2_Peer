# 
# cacheSolve.R
# Kenneth Linton, 26-Oct-14
# 

cacheSolve <- function(x, ...) {
    inverse <- x$getInverse()
    
    # if inverse set, return cached value
    if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
    }
    
    # inverse not cached, calculate it
    data <- x$get()
    inverse <- solve(data, ...)
    
    # cache inverse matrix & return it
    x$setInverse(inverse)
    return(inverse)    
}