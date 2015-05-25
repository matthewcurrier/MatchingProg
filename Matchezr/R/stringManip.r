#' A function to extract a string by starting with the right side of the string.
#'
#' This function has two args.
#' @param mypkg Name of package to check
#' @keywords NA, any NA
#' @export
#' @examples
#' right(x, y)


# create right function (as in Excel)
right <- function (string, char){
  substr(string,nchar(string)-(char-1),nchar(string))
}

# Three simple examples

# 1.
# extract state and city
# CallDetails_viaMD[, "state"] <- right(CallDetails_viaMD$RemoteName, 2)
# [1] TRUE


