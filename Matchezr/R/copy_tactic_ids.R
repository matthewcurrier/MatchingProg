#' A function to copy tactic ids.
#'
#' This function takes 1 arg...a data frame.
#' @param mypkg Name of package to check
#' @keywords copy, tactic ids
#' @export
#' @examples
#' copy_tactic_ids(x)
copy_tactic_ids <- function (x) {

                    rows <- nrow(x)

                    for (i in 1:rows){
                                        if(is.na(x[i, "tactic"])){
                                                            next
                                        }


                                        if (x[i, "tactic"] != "0" && is.na(x[i, "tactic_id"])) {
                                                            x[i, "tactic_id"] <- x[i, "tactic"]
                                        }


                    }

                    return(x)
}
