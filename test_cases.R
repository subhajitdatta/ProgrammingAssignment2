test_case_1 <- function() {
	set.seed(123)
	r = rnorm(1)
	mat1 = matrix(r, nrow=1, ncol=1)
	cachematrix_test(mat1)
}

test_case_2 <- function() {
	set.seed(123)
	r = rnorm(100)
	mat1 = matrix(r, nrow=10, ncol=10)
	cachematrix_test(mat1)
}

test_case_3 <- function() {
	set.seed(123)
	r = rnorm(10000)
	mat1 = matrix(r, nrow=100, ncol=100)
	cachematrix_test(mat1)
}

test_case_4 <- function() {
	set.seed(123)
	r = rnorm(1000000)
	mat1 = matrix(r, nrow=1000, ncol=1000)
	cachematrix_test(mat1)
}
