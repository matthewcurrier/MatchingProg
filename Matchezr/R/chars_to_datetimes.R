#' A date Function
#'
#' This function allows you to convert char dates to datetimes.
#' @param df dataframe
#' @param date_cols lists the date columns
#' @param format
#' @keywords dates
#' @export
#' @examples
#' chars_to_datetimes()
chars_to_datetimes <- function (df, date_cols, format){
  # This function take the date columns (which are presumably chars) from a data frame
  # and passes it to an lappy for conversion.
  df[, date_cols] <- as.data.frame(lapply(df[, date_cols], as.POSIXct, "EST", format=format))
  return(df)
}

# exampel
# cols <- c("date1", "date2", "date3")
# chars_to_dates (df=mydf, date_col=cols, format="%m/%d/%Y"
