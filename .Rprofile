#------------------------------------------------------------
#                  |R Global Setting|
#
# You can (un)comment any code you dislike.
#
#
#
#
#------------------------------------------------------------


options(bitmapType='cairo')

# need to load first
pacman::p_load(devtools, roxygen2, testthat, pacman, ttoolkit, tidyverse)

# start with welcome
.First <- function(){
  message("Hello Liang!")
  message(paste0("Welcome at ", date()))
  # 配置install 命令使用的线程
  n <- parallel::detectCores()
  options(Ncpus = n-1)
  n2 <- getOption("Ncpus", 1L)
  message(paste0("We will use ", n2, " cores for installing.\n"))
}

# finish with goodbye
.Last <- function(){
  cat("\n Goodbye,", date(), "\n")
}

options(stringsAsFactors = FALSE) # 不自动将string转换为Factor
# options(scipen = 999, digits = 6) # 不用科学计数法显示，保留6位有效数字，这个还是使用默认的吧，有时候还是挺有用的
options(max.print = 99) # 限制最大打印行数/项，打印99999那么多行干嘛哟！
# options("width" = 100) # 设置每行最大显示字符个数，当你屏幕比较大时或许有用
options(continue = " ") # 换行输入时以空格开头，默认是+，当你选择粘贴时非常有用
# options(warn = 2) # 据说提醒方式更友好，遇到了再看效果把，默认: options(warn=0, error=NULL)。更：千万别这样设，不痛不痒的warning 也会转成 error，wdnmd

# Global utilities --------------------------------------------------------

## Open any directory in any operating system
.open <- rvcheck::o
## Check whether packages were installed
.is_installed <- rvcheck::is.installed
## Simpler function to download file
.download_file <- xfun::download_file
.upload_ftp <- xfun::upload_ftp
## Functions to obtain, remove, and change extensions in filenames
.fl_ext <- xfun::file_ext
.rm_ext <- xfun::sans_ext
.ch_ext <- xfun::with_ext
## Provide the "file" version of gsub(),
## i.e., they perform searching and replacement in files via gsub().
.gsub_file <- xfun::gsub_file
.gsub_files <- xfun::gsub_files
.gsub_dir <- xfun::gsub_dir
.gsub_ext <- xfun::gsub_ext
## Change the working directory, evaluate the expression,
## and restore the working directory
.move_run <- xfun::in_dir
## Install a source package from a directory
.install_dir <- xfun::install_dir
## Check OS
.is_linux <- xfun::is_linux
.is_windows <- xfun::is_windows
.is_macos <- xfun::is_macos
.is_unix <- xfun::is_unix
## Number to words, e.g. 1 to one, 10 to ten
.numbers_to_words <- xfun::numbers_to_words
## Read or write files, assuming they are encoded in UTF-8.
.read_file <- xfun::read_utf8
.write_file <- xfun::write_utf8
