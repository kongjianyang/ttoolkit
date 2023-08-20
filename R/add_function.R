#' @title add funtions that you want to store them in a function.R file
#'
#' @description today,I create my fourth function,a very useful function.
#'
#' @details you can use this function to receive any funtions that you want to store them in a function.R file
#' and source them automatically into your environment.
#'
#' @param virable param my_functions input any functions that you want to
#'
#'
#' @return information about what did the function do
#' @keywords add_function
#' @export
#' @examples
#' add_function(source_fun = TRUE)

add_function <- function(..., source_fun = F) {
  if (!file.exists("./my_function.R")) file.create("./my_function.R")
  if (source_fun == F) {
    var_args <- list(...)
    x <- var_args[[1]]
    var_args[1] <- NULL
    sink(file = "./my_function.R")
    cat(paste0(x, " <-"))
    tmp <- get(x)
    print(tmp)
    sink()
    for (i in var_args) {
      sink(file = "./my_function.R", append = T)
      cat(paste0(i, " <-"))
      tmp <- get(i)
      print(tmp)
      sink()
    }
    message("Now you can find your functions in : ./my_function.R")
  }
  else {
    source("./my_function.R");
    message("Your functions are in environment now.")
  }
}
