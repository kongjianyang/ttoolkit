
#' make folders
#'
#' @return a value
#' @export
#'
#' @examples
#' make_folders()
make_folders <- function(){
  folders <- c("src", "reports", "output", "input", "archived")

  for(folder in folders){
    if(!dir.exists(folder)){
      dir.create(folder)
    } else {
      print(paste(folder, "exists"))
    }
  }
}




