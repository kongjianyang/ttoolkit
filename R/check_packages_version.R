#' @title check_packages_version
#'
#' @description output packages version info
#'
#' @details you can use this function to receive a vector contained packages used
#' in your program.
#'
#' @param vector contains package names used
#'
#'
#' @return data.frame contain packages version info
#' @export
#' @examples
#' check_packages_version(c("maftools", "sad"))

check_packages_version <- function(packages = packages) {
  tmp <- as.data.frame(installed.packages())
  my_packages <- packages[packages %in% tmp$Package]
  unexist_packages <- packages[!packages %in% tmp$Package]
  result <- lapply(my_packages, function(x) {
    version_info <- tmp[tmp$Package == x, c("Version", "Depends", "Built")]
    data.frame(packages = x, versions = version_info)
  })
  result <- do.call("rbind", result)
  if (length(result) >= 1) {
    message(sprintf("%s is/are not installed or existed in your computer.", unexist_packages))
  }
  return(result)
}
