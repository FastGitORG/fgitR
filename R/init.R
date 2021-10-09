.onAttach <- function(libname, pkgname) {
  # Init check wehter Git exists
  # Function from R/init.R
  git_check()

  packageStartupMessage(
    "
    We thank FastGit UK Team who create fastgit.org.
    Due to the compatibility of license,
    git and its derived libs are not included in this package.
    Before you start using fgitR, please make sure you have installed git.
    For Windows, fgitR is not avaiable yet.
    "
  )
}

#' Check whether `git` is avaiable in OS
#'
#' `git` and its derived lib are under GPL license.
#' There is impossible to make git as a built-in
#' function for `fgitR`, which are under MIT lincese.
#'
#' Due to this, as a `fgitR` user, you have to install
#' `git` into your OS before using `fgitR`.
#'
git_check <- function() {
  git_path <-
    system("which git", intern = TRUE)

  if (length(git_path) == 0) {
    stop(
      "Git is not found in your OS.
    Please visit
    https://git-scm.com/downloads
    to download and install git firstly"
    )
  }
}