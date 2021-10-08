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
    stop(
      "Git is not found in your OS.
    Please visit
    https://git-scm.com/downloads
    to download and install git firstly"
    )
  }
}

git_repo_extract <-
  function(url_or_repo) {
    # Check wheter input is a repo url
    if (grepl("^http(|s)://|github.com/", url_or_repo)) {
      message("Try to clone from repository's url")
      # Remove .git from URL
      url <-
        gsub(".git$", "", url_or_repo)
      # Remove domain from URL
      repo <-
        gsub("http(|s)://github.com/|github.com/", "", url)
      return(repo)
    } else {
      message("Try to clone by repository's name")
      repo <- url_or_repo
    }
  }
