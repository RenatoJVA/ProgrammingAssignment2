## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheTranspose <- function(x = matrix()) {
  t_matrix <- NULL 
  set <- function(y) {
    x <<- y       
    t_matrix <<- NULL  
  }
  get <- function() x  
  settranspose <- function(transpose) t_matrix <<- transpose 
  gettranspose <- function() t_matrix  
  
  list(set = set, get = get,
       settranspose = settranspose,
       gettranspose = gettranspose)
}


## Write a short comment describing this function

cacheTranspose <- function(x, ...) {
  t_matrix <- x$gettranspose()
  if (!is.null(t_matrix)) {
    message("getting cached transpose")
    return(t_matrix)
  }
  data <- x$get()  
  t_matrix <- t(data)  
  x$settranspose(t_matrix) 
  t_matrix  
}

