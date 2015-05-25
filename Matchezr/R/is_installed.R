#' A function to check if a package is installed
#'
#' This function allows you to check whether an r package is installed
#' @param mypkg Name of package to check
#' @keywords installation
#' @export
#' @examples
#' is.installed()



# Function to check whether package is installed
is.installed <- function(mypkg){
                    is.element(mypkg, installed.packages()[,1])
} 

# check if package "hydroGOF" is installed
# if (!is.installed("hydroGOF")){
#                     install.packages("hydroGOF")
# }