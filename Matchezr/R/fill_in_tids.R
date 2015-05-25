#' A function to fill in tactic ids.
#'
#' This function takes 1 arg...a data frame
#' @param mypkg Name of package to check
#' @keywords tactic id
#' @export
#' @examples
#' fill_in_tids(x)

fill_in_tids <- function (x) {

rows <- nrow(x)

for (i in 1:rows){


                                             if (x[i, "site_id"] == "16" && is.na(x[i, "tactic_id"])) {
                                                 x[i, "tactic_id"] <- "130"
                                             }

                                             if (x[i, "site_id"] == "18" && is.na(x[i, "tactic_id"])) {
                                                 x[i, "tactic_id"] <- "131"
                                             }

                                             if (x[i, "site_id"] == "17" && is.na(x[i, "tactic_id"])) {
                                                 x[i, "tactic_id"] <- "132"
                                             }

                    }

return(x)
}

# forms_2 <- fill_in_tids(forms)

# write.csv(forms_2, file="out/forms_2.csv")
