#' A function to test if a selected group of cols has any NAs
#'
#' This function has one arg.
#' @param mypkg Name of package to check
#' @keywords NA, any NA
#' @export
#' @examples
#' any_non_na(x)


any_non_na <- function (x){
          # This function goes through a vector (or dataframe?) and identifies
          # and returns TRUE if there are any non-NA values. 
                    
          result <- any(!is.na(x))
          return(result)
                                       
}

# Three simple examples

# 1.
# y <- c(NA, NA, NA, FALSE)
# any_non_na(y)

# [1] TRUE


# 2.
# y <- c(NA, NA, NA, TRUE)
# any_non_na(y)

# [1] TRUE

# 3.
# y <- c(NA, NA, NA)
# any_non_na(y)
# [1] FALSE