## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#this function will cache matrix


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
            set <- function(y) {# set cache matrix
                    x <<- y
                    m <<- NULL
            }
            get <- function() x# get cache matrix
            setsolve <- function(solve) m <<- solve #set cache matrix solve
            getsolve <- function() m #get cache matrix solve
            list(set = set, get = get,
                 setsolve = setsolve,
                 getsolve = getsolve)



## Write a short comment describing this function

#
#this will use to solve matrix and put into cache
#if the matrix already solve and unchange, it will read from cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		       m <- x$getsolve()
            if(!is.null(m)) {#if m which is cache is not empty
                    message("getting cached data")#read cache
                    return(m)#done
            }
			
			# solve the matrix
            data <- x$get()
            m <- solve(data, ...)
            x$setsolve(m)#set in cache
            m
}

# in my work, I use some material from Example: Caching the Mean of a Vector which this course have provided
