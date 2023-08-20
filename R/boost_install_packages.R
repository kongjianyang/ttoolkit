#' @title boost_install_packages
#'
#' @description receive a vector of packages and install them from cran or bioconductor
#'
#' @details you can use this function to download a batch of uninstalled packages from CRAN or bioconductor and stop if exists.
#'
#' @param my_packages input a vector of your packages
#' @param loaded logical
#' @param parallels logical or numeric
#' @param mirror logical
#' @param jobs logical
#'
#' @return information about what did the function do
#' @keywords boost_install_packages
#' @export
#' @examples
#' boost_install_packages(c("devtools", "roxygen2", "testthat"))
#' boost_install_packages(my_packages = c("devtools", "roxygen2", "testthat"))
boost_install_packages <- function(my_packages = my_packages, loaded = F, parallels = F, mirror = F, jobs = F) {
  if (jobs == T) {
    message("Now will use jobs for installing. HAPPY! console is free now!")
    job::job({sapply(my_packages, simplify = F, function(my_packages = my_packages) {
      if (!my_packages %in% rownames(installed.packages())) {
        CRANpackages <- available.packages()
        if (my_packages %in% rownames(CRANpackages)) {
          install.packages(my_packages)
        } else {
          BiocManager::install(my_packages,
                               suppressUpdates = F,
                               ask = F)
        }
      }
    })}, packages = NULL)
    message(paste0(paste(my_packages, collapse=", "), " are already in your computer."))
  } else {
    sapply(my_packages, simplify = F, function(my_packages = my_packages) {
      if (!my_packages %in% rownames(installed.packages())) {
        CRANpackages <- available.packages()
        if (my_packages %in% rownames(CRANpackages)) {
          install.packages(my_packages)
        } else {
          BiocManager::install(my_packages,
                               suppressUpdates = F,
                               ask = F)
        }
      } else {
        message(paste0(my_packages, " is already installed."))
      }
    })
    message(paste0(paste(my_packages, collapse=", "), " are already in your computer."))
  }
  if (loaded == T) {
    sapply(my_packages, simplify = F, function(my_packages) library(my_packages, character.only= T, quietly = T))
    message(paste0(paste(my_packages, collapse=", "), " are  also successfully loaded in your namespace."))
  }
  if (parallels == T) {
    Ncpus <- parallel::detectCores()
    if (Ncpus >= 8) {
      Ncpus <- 8
    }
    else {Ncpus <- parallel::detectCores() - 1}
  } else if (class(parallels) == "numeric") {
    max_cpu <- parallel::detectCores()
    Ncpus <- parallels
    if (Ncpus >= max_cpu) {
      Ncpus <- max_cpu - 1
      if (Ncpus >= 8) {
        Ncpus <- 8
      }
      message("You think too high to your cpu, I will set it to a safe number.")
    } else if (Ncpus >= 8) {
      Ncpus <- 8
      message("I think there is no need for you to recruit so many cpus.")
    }
    options(Ncpus = Ncpus)
    message(paste0("We will use ", Ncpus, " cores for installing."))
    message("You can set ur parallels back by: options(Ncpus = 1)")
  }
}

