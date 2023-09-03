#' Title make_installed_packages
#'
#' @return a file
#' @export
#'
#' @examples
#' make_installed_packages()
make_installed_packages <- function(){
  all_packages <- installed.packages() |>  as.data.frame()
  writexl::write_xlsx(all_packages, "installed_packages.xlsx")
}
