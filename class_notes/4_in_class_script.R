# Goal: Go through in class exercises for AMES 
# Andie Creel / Started: September, 2024 

a <- 2 
b <- 3 

a+b

# numeric 
myInt <- 1

# numeric - double
myNum <- 2.4


# logical (boolean/indicators) 
myBool_1 <- (3<4)
myBool_2 <- (3>4)

# character (string)
myChar_a <- "a"
myChar_b <- 'b'

# vector 
myVec_n <- c(1,2,3,4,5)
myVec_s <- c(myChar_a, "b", "c")
myChar_a <- "b"
myVec_s <- c(myChar_a, "b", "c")

myVec_string <- c(1, "b", "c")


# matrix 
myMat_n <- matrix(c(myVec_n, 
                    6,7,8,9,10), nrow = 5, ncol = 2)


# List: store multiple datatypes in one object 
myList <- list(2, "c", myMat_n)

myList[[2]]


# dataframes
myDF <- as.data.frame(myMat_n)

# change names 
colnames(myDF) <- c("age", "weight")

# one column 
myDF$age

# create new column 
myDF$nonsense <- myDF$age + myDF$weight


#creat a new data frame 
myPpl <- data.frame(
  gender = c("Male", "non-binary", "Female"),
  male = c(T, F, F), 
  height = c(152, 171.5, 165), 
  weight = c(81, 93, 78),
  age = c(42, 38, 26)
)

# dollar is way of accessing columns 
myPpl$gender
myPpl$male

# column notation with brackets 
myPpl[,2]

# reference a row 
myPpl[1,]
myPpl[1]

# bracket notation [row, column]

# reference a cell 
myPpl$height[1]
myPpl[1,3]


# a word of caution 

a <- 5 
a <- a + 1 

a <-  5
a_new <- a + 1

# function 

# myF(x): y <- x +3 ; return (y)
# myF(x=4)


# my function 

myF <- function(x){
  y <- x - x^2
  return(y)
}

myF(.5)

myF(.25)
myF(.3)

# Loops 
# For (i in 1 through 4): Print i 
# For (i in 1 through 4): Print i/4

print(1)
print(2)
print(3)
print(4)

for (i in 1:4) {
  print(i)
}

# more involved example 
for (i in 1:4) {
  print(i/4)
}

# combine for loop and function 
for (i in 1:4) {
  y <- myF(i/4)
  print(y)
}

for (variable in vector) {
  
}


# update age line by line 

myPpl$age_new_a[1] <- myPpl$age[1] + 1
myPpl$age_new_a[2] <- myPpl$age[2] + 1
myPpl$age_new_a[3] <- myPpl$age[3] + 1


# version two: loop 
for (i in 1:length(myPpl$age)){
  myPpl$age_new_b[i] <- myPpl$age[i] + 1
}


# conditional statement 
for (i in 1:length(myPpl$male)) {
  
  if(myPpl$male[i] == TRUE){
    myPpl$age_new_m[i] <- myPpl$age[i]+3
  }else{
    myPpl$age_new_m[i] <- myPpl$age[i]
  }
}







