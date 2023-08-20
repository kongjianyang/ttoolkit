#' Title make r profile
#'
#' @param new_file file name
#'
#' @return file name
#' @export
#'
#' @examples
#' make_rprofile(new_file=".Rprofile")
make_rprofile <- function(new_file=".Rprofile") {
  # read template file content
  template_text <- readLines(system.file("templates", "rprofile_templates", package = "ttoolkit"))

  # replace「__FILENAME__」as the new file
  template_text <- gsub("__FILENAME__", new_file, template_text)

  # write to a new file
  writeLines(template_text, new_file)
}
