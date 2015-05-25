#' A function to to concat data frame columns.
#'
#' This function will concatenate any number of columns into one.
#' @param mypkg Name of package to check
#' @keywords concatenation
#' @export
#' @examples
#' concat_cols(df, cols, newcol)



concat_cols <- function(df, cols, newcol){
# This function will concatenate any number of columns into one.
# There are three args: 1. The dataframe to be manipulated.
#                       2. The columns to combine.
#                       3. The name of the new column.
# http://www.computerworld.com/article/2486425/business-intelligence-4-data-wrangling-tasks-in-r-for-advanced-beginners.html

                    df[, newcol] <- apply(df[,cols], 1, function(x) paste(x, collapse=""))
                    return(df)
}
