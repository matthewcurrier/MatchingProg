#' Retrieve full file path for a directory.
#'
#' This function takes 2 arguments
#' @param p which is file path, and pat, to indicate the file type.
#' @keywords file path, url
#' @export
#' @examples
#' get_fpaths(p, pat)

get_fpaths <- function(p, pat){
  files <- list.files(path=p, pattern=pat)
  complete_paths <- paste(p, files, sep="")
}

# A simple example

# direc <- "Z:/Team Folders/MCurrier/R/Projects/MA-ALL-V2/data/dm/"
# files <- get_fpaths(p=direc, pat="*.csv")
# print(files)
# 
# [1] "Z:/Team Folders/MCurrier/R/Projects/MA-ALL-V2/data/dm/dm_child_pen.csv"    
# [2] "Z:/Team Folders/MCurrier/R/Projects/MA-ALL-V2/data/dm/dm_child5star.csv"   
# [3] "Z:/Team Folders/MCurrier/R/Projects/MA-ALL-V2/data/dm/dm_no_child_pen.csv" 
# [4] "Z:/Team Folders/MCurrier/R/Projects/MA-ALL-V2/data/dm/dm_no_child5star.csv"

