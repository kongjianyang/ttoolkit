% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boost_install_packages.R
\name{boost_install_packages}
\alias{boost_install_packages}
\title{boost_install_packages}
\usage{
boost_install_packages(
  my_packages = my_packages,
  loaded = F,
  parallels = F,
  mirror = F,
  jobs = F
)
}
\arguments{
\item{my_packages}{input a vector of your packages}

\item{loaded}{logical}

\item{parallels}{logical or numeric}

\item{mirror}{logical}

\item{jobs}{logical}
}
\value{
information about what did the function do
}
\description{
receive a vector of packages and install them from cran or bioconductor
}
\details{
you can use this function to download a batch of uninstalled packages from CRAN or bioconductor and stop if exists.
}
\examples{
boost_install_packages(c("devtools", "roxygen2", "testthat"))
boost_install_packages(my_packages = c("devtools", "roxygen2", "testthat"))
}
\keyword{boost_install_packages}
