#' Takes a dataframe and a vector of columns and converts to dates
#'
#' This function takes 2 arguments
#' @param df which is a data frame, and cols which is columns.
#' @keywords file path, url
#' @export
#' @examples
#' r_filename(x)


to_date <- function (df, cols) {
             for (i in seq_along(cols)) {
               df[, cols[i]] <- as.Date(df[, cols[i]], "%m/%d/%Y")
             }
             return(df)
}
