## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function makes a child function to do actual work.
#It creates child function to set variable,get data from variable, created cached
# data of inverse and accesing cached data.
makeCacheMatrix <- function(x = matrix()) {
  in_m<-NULL
  set<- function(y){
    x<<- y
    in_m<<-NULL
  }
  get <- function() x
  setInverse<- function(inverse_mat) in_m<<- inverse_mat
  getInverse<- function() in_m
  list(set= set, get= get, setInverse= setInverse, getInverse=getInverse)
}


## Write a short comment describing this function
#This function checks the cached data in makeCacheMatrix function and if available
#return the value or else it computes inverse and savess the value in cached data
#using set child function of makeCacheMatrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  dt<- x$get()
  inv<- solve(dt)
  x$setInverse(inv)
  inv
}
