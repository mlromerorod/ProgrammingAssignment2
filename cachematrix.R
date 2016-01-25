## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
Matrizinversa  <- NULL
        set <- function(y) {
                x <<- y
               Matrizinversa  <<- NULL
        }
        get <- function() x
        setMatrizinversa <- function(solve) Matrizinversa <<- solve
        getMatrizinversa <- function()Matrizinversa
        list(set = set, get = get,
             setMatrizinversa = setMatrizinversa,
             getMatrizinversa = getMatrizinversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
               Matrizinversa <- x$getMatrizinversa ()
        if(!is.null(Matrizinversa)) {
                message("getting cached data")
                return(Matrizinversa)
        }
        data <- x$get()
       Matrizinversa<- solve(data, ...)
        x$setMatrizinversa (Matrizinversa)
       Matrizinversa
}
