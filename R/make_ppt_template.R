#' make_ppt_template
#'
#' @param wd
#' @param fn
#'
#' @return folder
#' @export
#'
#' @examples
make_ppt_template <- function(wd = work_folder, fn = file_name){

  ppt_files <- system.file("templates", "ppt_template.pptx", package = "ttoolkit")

  file.copy(ppt_files, to=file.path(wd, fn))

  message(paste0("You successfully create file: ", fn))
}
