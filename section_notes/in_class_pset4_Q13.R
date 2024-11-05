# Goal: Go through set up for pset 4 Q13
# Andie Creel / Started Nov 2024

# ------------------------------------------------------------------------------
# Problem set up: define the matrices A, B and b 
# ------------------------------------------------------------------------------

A <- matrix(nrow = 2, ncol = 2, data = c(1, 2, 3, 2))
A

B <- matrix(nrow = 2, ncol = 4, data = c(1, 3, 1, 22, 1, 3, 1, 22))
B

b <- matrix(nrow = 2, ncol = 1, data =  c(1, 3))
b

# ------------------------------------------------------------------------------
# Problem set up: define the matrices A, B and b 
# ------------------------------------------------------------------------------

# function take takes 2 matrices and then returns their product 

get_product <- function(my_A, my_B){
  
  # check to see if conformable 
  if(ncol(my_A) != nrow(my_B)){
    stop("not conformable matrices")
  }
  
  # initialized the output matrix 
  C <- matrix(nrow = nrow(my_A), ncol = ncol(my_B), data = 0)
  C
  
  # loop over rows of A
  for (i in 1:nrow(my_A)) {
    
    # loop over columns B
    for (j in 1:ncol(my_B)){
      # print(paste(i,",", j))
      C[i, j] <- sum(my_A[i,] * my_B[,j])
      
    }
    
  }
  
  return(C)
  
}

C <- get_product(A,B)
C
A%*%B


D <- get_product(A, b)
D

A%*%b

# ------------------------------------------------------------------------------
# Part B: Solve the equation Ax = b to find x
# x = A^{-1}%*%b
# ------------------------------------------------------------------------------

A_inverse <- solve(A)

x <-  A_inverse %*% b
x


x_2 <- solve(A,b)
x_2

??solve()





