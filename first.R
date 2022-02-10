first <- function() {
  x <- randu
  return(x)
}

second <- function(x) {
  4+x
}

third <- function(x,y){
  n <- x*y
  z <- matrix(data = 1:n, nrow = x, ncol = y)
  return(z)
}
 
fourth <- function() (
  x <- factor(c("yes","no","Hi","no","hi","yes"))
)

fifth <- function() {
  x <- data.frame(stan = c(1,2,3), joe = c(T,T,F))
  return(x)
}


## x <- read.table("...", nrows = 100)
## classes <- sapply(x,class) //sapply gives clases
## y <- read.table("...", colClasses = classes) //colClasses tells R the class of the column to save memory


## y <- (a = 1, b = "a")
## dput(Y, file = "y.R")
## x <- dget("y.R")

## y <- (a = 1, b = "a")
## x <- "flr"
## dump <- c("x", "y", file = "s.R")
## source("s.R")

## x <- list(a = 1, b = "abbe", c = T)
## x[["a"]]
## x[2]
## x$a //$ is only used to call for a name
## x[c(1,2)]


## x <- matrix(1:6, 2, 3)
## x[1,2]
## x[1,2, drop = "false"] //turning drop false returns same class as parent class
## x[1,2, drop = FALSE] //same as above

## x <- c(1, 2, NA, 4, 5)
## y <- c("a", NA, "b")
## z <- c(NA, 1, 1, 1, 1)
## s <- complete.cases(x, y, z) //gives common good values between variables
## x[s] //will return only good values (non NA) considering all (x,y,z)
## r <- complete.cases(x)
## x[r] //will return only good values considering only x

## x <- c(1, 2, NA, 4, 5)
## b <- is.na(x) //is.na gives whether value is NA or not
## x[!bad] // ! indicates "bang operator"

## read.csv("hw1_data.csv", nrow = 2) /first two rows

## x <- read.csv("hw1_data.csv")
## x[c(152,153),]
## y <- x[,1] //designating values in Ozone column to variable y
## z <- is.na(y)
## mean(y[!z])

## a <- x[c(x[,1]>31),] //assigning values from column 1 which are more than 31 to variable a
## b <- a[c(a[,4]>90),] //assigning values from column 4 which are more than 90 to variable b
## c <- b[,2]
## complete.cases(c)
## mean(c[d])

## a <- x[c(x[,5]==6),]
## b <- a[,4]
## c <- mean(b[complete.cases(b)])

## a <- x[c(x[,5]==5),]
## b <- a[,1]
## max(b[complete.cases(b)])


meanCol <- function(y, removeNA = TRUE) ##removeNA function removes all the NA values
  {
  nc <- ncol(y)
  mean <- numeric(c(nc))
  for (i in 1:nc) 
    {
    mean[i] <- mean(y[,i], na.rm = removeNA) ##na.rm takes the reference from removeNA function
    }
  mean
  }