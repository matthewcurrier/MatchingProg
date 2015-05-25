#' This will tell you give you the basepart of the filename.
#'
#' This function takes 1 argument
#' @param p which is file path, and pat, to indicate the file type.
#' @keywords file path, url
#' @export
#' @examples
#' r_filename(x)


r_filename <- function (x){
  t <- basename(x)
  pieces <- strsplit(t,"[.]")
  sapply(pieces, "[", 1)
}


# A simple example

# myfiles <- c("Z:/Team Folders/MCurrier/R/Projects/MA-ALL-V2/data/dm/fun.csv", 
#              "superfun.csv",
#              "Z:/Team Folders/MCurrier/R/Projects/MA-ALL-V2/data/dm/crazy.csv")
# myfilesnames <- r_filename(myfiles)
# print(myfilesnames)
# 
# [1] "fun"      "superfun" "crazy"  
