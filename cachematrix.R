## The functions below will cache the inverse of a matrix

## This first function, makeCacheMatrix, creates a holding matrix
##

makeCacheMatrix <- function(matrix_data = matrix()) {
        stored_inverse<-NULL
        
        set<-function(y) {
                #setting matrix data to store (cache environ.)
                matrix_data<<- y
                
                #initializing name to hold stored inverse.
                stored_inverse<<-NULL
                
        }
        
        get<-function(){
                #get Matrix specified by user
                return(matrix_data)
        }
        
        setinv<-function(newinv){
                #setting calculated inverse to store
                stored_inverse<<-newinv
        }
        
        getinv<-function(){
                #get inverse of matrix
                return(stored_inverse)
        }
        
        list(set=set,get=get,setinv=setinv,getinv=getinv)
}

## This function will compute the inverse of the matrix specified by user.
        ##It will first check to see if an inverse is available in cache
        ##If cached version exists, it will pull the cache, else it will calc
        ##the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
