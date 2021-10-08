.onAttach <- function(libname, pkgname) {
  # Init check wehter Git exists
  git_check()

  packageStartupMessage(
  "Due to the compatibility of license, git and its derived libs are not included in this package.
  Before you start using fgitR, please make sure you have installed git.
  For Windows, fgitR is not avaiable yet."
    )
}

git_check <- function() {
  git_path <-
    system("which git", intern = TRUE)

  if (length(git_path) == 0) {
    stop("Git is not found in your OS.
    Please visit
    https://git-scm.com/downloads
    to download and install git firstly")
  }
}
