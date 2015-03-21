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

cacheSolve <- function(matrix_data, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        ##get stored inverse
        stored_inverse<-matrix_data$getinv()
        
        ##check that the stored inverse has a value, i.e. was previously computed
        if(!is.null(stored_inverse)) {
                
                #if previously computed, show the stored inverse
                message("getting cached data...")
                return(stored_inverse)
                
                
        }
        #if inverse wasn't previously computed, then
        else {
                
                #add the new data to the environment
                local_matrix<-matrix_data$get()
                
                #compute the inverse of the matrix data and put it in the stored inverse var.
                stored_inverse<-solve(local_matrix)
                
                #put the stored inverse into the cache
                matrix_data$setinv(stored_inverse)
                return(stored_inverse)
        }
        
        
}
