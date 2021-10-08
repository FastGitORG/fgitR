#' Git Clone by FastGit's URL
#'
#' @param repo
#'
#' The repo name from GitHub.com
#'
#' @param overwite
#'
#' Overwrite the exist directories. Default is `FALSE`
#'
#' @param verbose
#'
#' Verbose logs. Default is `TRUE`
#'
fgit_clone_from_url <- function(fgit_url,
                                target_dir,
                                overwite = FALSE,
                                verbose = TRUE) {
  # Check whether git is availiable
  git_check

  # Assemble the Git clone command
  # use -C argument to set the
  # target dir
  clone_cmd <-
    paste0("git -C ", target_dir, " clone ", fgit_url)
  system(clone_cmd)
  message(paste0("Repo has been cloned to", target_dir))
}

#' Git Clone from Repo by FastGit
#'
#' @param repo
#'
#' The repo name from GitHub.com
#'
#' @param overwite
#'
#' Overwrite the exist directories. Default is `FALSE`
#'
#' @param verbose
#'
#' Verbose logs. Default is `TRUE`
#'
#' @export
#'
#' @examples
#'
#' fgit_clone_repo("womeimingzi11/fgitR", overwrite = TRUE)
#'
fgit_clone_repo <- function(repo,
                       dir = tempdir(),
                       overwite = FALSE,
                       verbose = TRUE) {
  # Check whether git is availiable
  git_check()

  # Check wheter input is a repo
  if(grepl("^http(|s)://|.git$",repo)) {
    stop("Please make sure, `repo` equal to `name of repository`")
  }

  # Set the domain of fastgit
  fast_git_domain <-
    "https://hub.fastgit.org/"

  # Jointing the Repo name and FastGit
  # as the url of Repo
  fgit_url <-
    paste0(fast_git_domain, repo)

  # Assemble dir/repo
  target_dir <-
    file.path(dir, repo)

  # Functions from R/utils.R
  func_mk_dir(target_dir = target_dir,
              verbose = verbose,
              overwite = overwite)

  # Functions from R/fgit.R
  # clone repot to target_dir
  fgit_clone_from_url(fgit_url,
                      target_dir = target_dir,
                      overwite,
                      verbose)
}

#' Git Clone from URL by FastGit
#'
#' @param url
#'
#' The repo name from GitHub.com
#'
#' @param overwite
#'
#' Overwrite the exist directories. Default is `FALSE`
#'
#' @param verbose
#'
#' Verbose logs. Default is `TRUE`
#'
#' @export
#'
#' @examples
#'
#' fgit_clone_url("https://hub.fastgit.org/womeimingzi11/amapGeocode.git", overwrite = TRUE)
#'
fgit_clone_url <- function(url,
                            dir = tempdir(),
                            overwite = FALSE,
                            verbose = TRUE) {
  # Check whether git is availiable
  git_check()

  # Check wheter input is a repo
  if(!grepl("^(http|https)://", url)) {
    stop("Please make sure, `url` equal to `url of repository`")
  }

  if(grepl(".git$", url)) {
    url <-
      gsub(".git$", "", url)
  }

  repo <-
    gsub("http(|s)://github.com/", "", url)

  # Set the domain of fastgit
  fast_git_domain <-
    "https://hub.fastgit.org/"

  # Jointing the Repo name and FastGit
  # as the url of Repo
  fgit_url <-
    paste0(fast_git_domain, repo)

  # Assemble dir/repo
  target_dir <-
    file.path(dir, repo)

  # Functions from R/utils.R
  func_mk_dir(target_dir = target_dir,
              verbose = verbose,
              overwite = overwite)

  # Functions from R/fgit.R
  # clone repot to target_dir
  fgit_clone_from_url(fgit_url,
                      target_dir = target_dir,
                      overwite,
                      verbose)
}
