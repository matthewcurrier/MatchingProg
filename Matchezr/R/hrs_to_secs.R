#' Converts hours to seconds.
#'
#' This function takes 1 argument.
#' @param h is the number of hours to be converted to secs.
#' @keywords hours, seconds, conversion
#' @export
#' @examples
#' hrs_to_secs(h)

hrs_to_secs <- function(h) {
  s <- h * 3600
  return(s)
}

# myhrs <- 2
# hrs_to_secs(2)
# [1] 7200
