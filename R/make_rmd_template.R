#' Make own rmd file
#'
#' @param filename file name
#' @param project project name
#' @param author author
#' @param dir folder
#'
#' @return file name
#' @export
#'
#' @examples
#' make_rmd_template("my_rmd", "project", "Liang")
make_rmd_template <- function(
    filename = "file", project = "Work on the project",
    author = "Liang", dir = getwd())
{
  if (file.exists(file.path(dir, filename))) invisible(NULL)
  else{
    if (!grepl(".Rmd$", filename))
      filename <- paste0(filename, ".Rmd")

    # read template file content
    template_text <- readLines(system.file("templates", "rmd_template.Rmd", package = "ttoolkit"))

    # replace「__FILENAME__」as the new file
    template_text <- gsub("__FILENAME__", filename, template_text)

    # write to a new file
    writeLines(template_text, filename)

    message(paste0("You successfully create file: ", filename))
  }
  file.edit(file.path(dir, filename))
}
