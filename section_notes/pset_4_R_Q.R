# Goal: Go through set up for pset 4 Q13
# Andie Creel / Started Nov 2024

# ------------------------------------------------------------------------------
# Problem Setup: Define matrices A and B, and vector b
# ------------------------------------------------------------------------------

# 2x2 matrix
A <- matrix(c(1, 3, 2, 2), nrow = 2, ncol = 2)  
A

# 2x4 matrix
B <- matrix(c(1, 1, 1, 1, 3, 22, 3, 22), nrow = 2, ncol = 4)  
B

# 2x1 vector
b <- matrix(c(1, 3), nrow = 2, ncol = 1) 
b

# ------------------------------------------------------------------------------
# Part (a): Custom matrix multiplication function
# ------------------------------------------------------------------------------

# This function takes two matrices, A and B, as input and returns their product A %*% B.
matrix_multiply <- function(my_A, my_B) {
  
  # Check if matrix dimensions are compatible for multiplication
  if (ncol(my_A) != nrow(my_B)) {
    stop("Number of columns in A must match the number of rows in B")
  }
  
  # Initialize an empty matrix for the result with dimensions of A's rows and B's columns
  result <- matrix(0, nrow = nrow(my_A), ncol = ncol(my_B))
  
  # Loop over the rows of A and columns of B
  for (i in 1:nrow(my_A)) {
    for (j in 1:ncol(my_B)) {
      
      # Compute the dot product of the ith row of A and the jth column of B
      for (k in 1:ncol(my_A)) {
        result[i, j] <- result[i, j] + my_A[i, k] * my_B[k, j]
      }
    }
  }
  
  # Return the resulting matrix
  return(result)
}

# Test 1 ------
# Function 
matrix_multiply(A, B)

# R
A %*% B

# Test 2 ------
# Function
matrix_multiply(my_A = A, my_B = b)

# R 
A %*% b

# ------------------------------------------------------------------------------
# Part (b): Solving matrix equation Ax = b and finding the inverse of A
# ------------------------------------------------------------------------------

# Use the solve function to calculate A^-1 and the vector x

# Calculate the inverse of A
A_inverse <- solve(A)
A_inverse

# Solve for x in Ax = b
x <- solve(A, b)
x

