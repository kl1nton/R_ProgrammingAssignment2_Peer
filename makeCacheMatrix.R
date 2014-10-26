#
# makeCacheMatrix.R
# Kenneth Linton, 26-Oct-14
#

# create special cache-matrix object
makeCacheMatrix <- function(x = numeric()) {
    m_inverse <- NULL
    
    # set matrix
    set <- function(y){
        x <<- y
        m_inverse <<- NULL  
    }
    
    # get matrix
    get <- function() x
    
    # set inverse
    setInverse <- function(inverse) m_inverse <<- inverse
    
    # get inverse
    getInverse <- function() m_inverse
    
    # return cache-matrix
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}