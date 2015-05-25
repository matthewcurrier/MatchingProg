#' A function to remove a specific char from a field.
#'
#' This function takes 3 args...the data frame, the field, the value to delete.
#' @param mypkg Name of package to check
#' @keywords compression, substitution
#' @export
#' @examples
#' compress_ph(df, x, val2del)


compress_ph <- function (df, x, val2del="") {
# compress_ph removes unwanted chars from phone numbers. Goal is a 10 char string.

                    check_if_df <- function (df){
                                        if (is.data.frame(df)) {
                                                            print("This is a data frame.")
                                        }
                                        else {
                                                            print("This is NOT a data frame.")
                                        }
                                        return(df)

                    }

                    check_if_vec <- function(x){
                                        if(is.vector(x)) print("This is a vector.")
                                        else print("This is not a vector")
                    }

                    check_if_df(df)
                    check_if_vec(x)


                    len <- length(x)
                    for (i in 1:len){
                                        col <- x[i]
                                        df[  , col] <- gsub(val2del,"", df[ , col])

                    }

                    return(df)

}
