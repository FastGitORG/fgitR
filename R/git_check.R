git_check <- function() {
  git_path <-
  system("which git", intern = TRUE)

  if(length(git_path) == 0) {
    stop("Git is not found in your OS.
    Please visit
    https://git-scm.com/downloads
    to download and install git firstly")
  }
}
