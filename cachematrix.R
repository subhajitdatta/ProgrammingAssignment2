## makeCacheMatrix caches the matrix and its inverse
## cacheSolve returns the inverse of the matrix

## makeCacheMatrix returns a list of functions 
## list(setMatrix, getMatrix, setMatrixInverse, getMatrixMean)
## setMatrix and getMatrix are to set and get the matrix X
## setMatrixInverse and getMatrixInverse are to set and get the inverse of matrix X

makeCacheMatrix <- function(x = matrix()) {

	inverse <- NULL
	
	setMatrix <- function(y) {
		x <<- y
		inverse <<- NULL
	}

	getMatrix <- function() {
		x
	}

	setMatrixInverse <- function(inv) {
		inverse <<- inv
	}

	getMatrixInverse <- function() {
		inverse
	}

	list(	setMatrix = setMatrix,
		getMatrix = getMatrix,
		setMatrixInverse = setMatrixInverse,
		getMatrixInverse = getMatrixInverse
	)	
}


## cacheSolve checks if the inverse of X exists in cache
## If present in cache return inverse from cache
## Else calculate the inverse and store in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	
	inverse <- x$getMatrixInverse()

	if(!is.null(inverse)) {
		message("getting inverse from cache")
		return(inverse)
	}

	data <- x$getMatrix()
	inverse <- solve(data, ...)
	x$setMatrixInverse(inverse)

	inverse
}


