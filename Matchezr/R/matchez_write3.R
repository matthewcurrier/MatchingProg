# This works. It's just very, very slow. Returns first match that has tactic_id

match_write_tid <- function (x, y, z="", xcol="", ycol=""){
                    
                    xrows <- nrow(x)
                    
                    for (i in 1:xrows){
                                        print(paste("Loop iteratation is:", i))
                                        
                                        if ( is.na(x[i, xcol]) ) {
                                                            next
                                        }
                                        
                                        
                                        if (any(y[, ycol] %in% x[i, xcol] )) {
                                                            
                                                            match_loc <- which(y[, ycol] %in% x[i, xcol]) 
                                                            
                                                      
                                                           
                                                            
                                                            values_of_matches <- y[match_loc, "tid"]
                                                           
                                                            
                                                            non_na_matches <- !is.na(values_of_matches)
                                                           
                                                            matched_values <- values_of_matches[non_na_matches]
                                                            
                                                            
                                                            if (!length(matched_values!=0)) {
                                                                print(length(matched_values))                
                                                                x[i, z] <- "match but no tid"
                                                                print(paste("value of x[i,z] is", x[i,z]))
                                                                next

                                                                                
                                                            } else {
                                                                 m <- length(matched_values)           
                                                                 x[i, z] <- matched_values[m]
                                                                 next
                                                                                
                                                            }
                                                            

                                                            
                                                            
                                                            
                                                           
                                                            
                                                            
                                        } else {
                                                            
                                                            next
                                        }
                    }
                    return (x) 
}  
