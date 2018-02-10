## fnction to cache the inverse of matrix
## functions creates a matrix and cache the inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y)
	{
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setInverse <- function(solveMatrix) inv <<- solveMatrix
	getInverse <- function() inverse
	listlist(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## compute inverse of matrix from makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getInverse()
	if (!is.null(inverse))
	{
		message("getting cahced inverse")
		return (inverse)
	}
	data <- x$get()
	inverse <- solve(data)
	x$setInverse(inverse)
	inverse
}
