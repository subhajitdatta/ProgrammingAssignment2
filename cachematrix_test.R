## cachematrix_test is a utility function to report time difference
## for the test cases for cached matrix inverse

cachematrix_test <- function(matrix){

	cachedMatrix <- makeCacheMatrix(matrix)

	## Before caching
	start.time <- Sys.time()
	cacheSolve(cachedMatrix)
	end.time <- Sys.time()
	executionDuration <- end.time - start.time
	print(executionDuration)

	## After caching
	start.time <- Sys.time()
	cacheSolve(cachedMatrix)
	end.time <- Sys.time()
	executionDuration <- end.time - start.time
	print(executionDuration)
}
