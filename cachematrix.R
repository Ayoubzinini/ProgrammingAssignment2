## Thise function will give us the inverse of a matrix passing by 4 steps :
## 1- setting value of the matrix
## 2- getting value of the matrix
## 3- setting value of the inverse matrix
## 4- getting value of the inverse matrix

## Thise funtion will set and get the matrix X :

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Thise funtion will set and get the inverse of X :

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("Getting the matrix...")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
