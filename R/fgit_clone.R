#' Git Clone by FastGit's URL
#'
#' @param repo
#'
#' The repository's name from GitHub.com
#'
#' @param target_dir
#'
#' The output directory
#'
#' @param branch
#'
#' Clone from which branch.
#'
#' @param overwrite
#'
#' Overwrite the exist directories. Default is `FALSE`
#'
#' @param verbose
#'
#' Verbose logs. Default is `TRUE`
#'
fgit_clone_from_url <- function(fgit_url,
                                target_dir,
                                branch = NULL,
                                overwrite = FALSE,
                                verbose = TRUE) {

  # Check whether git is available
  git_check()

  # Assemble the Git clone command
  # use -C argument to set the
  # target dir
  clone_cmd <-
    if (is.null(branch)) {
      paste("git -C", target_dir, "clone", fgit_url)
    } else {

      # Detect branch existence
      ## Get branch list
      branch_ls_cmd <-
        paste("git ls-remote", fgit_url)

      ranch_ls <-
        system(branch_ls_cmd, intern = TRUE)

      # Stop once branch not exist
      if (!any(grepl(paste0(branch, "$"), x = ranch_ls))) {
        stop(branch, " branch does not exist")
      }

      paste("git -C", target_dir, "clone", fgit_url, "--single-branch --branch", branch)
    }

  system(clone_cmd)
  message(paste0("Repo has been cloned to", target_dir))
}

#' Git Clone from URL by FastGit
#'
#' @param repo
#'
#' The repository name or url from GitHub.com
#'
#' @param dir
#'
#' The output directory.
#' `tempdir()` will be used by default.
#'
#' @param branch
#'
#' Clone from which branch.
#'
#' @param repo_check
#'
#' Check the existence of repository
#'
#' @param overwrite
#'
#' Overwrite the exist directories. Default is `FALSE`
#'
#' @param verbose
#'
#' Verbose logs. Default is `TRUE`
#'
#' @param return_dir
#'
#' Return directory as `target_dir` to parent environment?
#' Somehow useful to catch the temp directory.
#'
#' @export
#'
#' @examples
#'
#' fgit_clone("https://github.com/womeimingzi11/fgitR", overwrite = TRUE)
#' fgit_clone("womeimingzi11/fgitR", overwrite = TRUE)
fgit_clone <- function(repo,
                       dir = tempdir(),
                       branch = NULL,
                       repo_check = TRUE,
                       overwrite = FALSE,
                       verbose = TRUE,
                       return_dir = FALSE) {
  # Check whether git is availiable
  git_check()

  # Convert URL to Repo
  # For repo in name format
  # nothing will happen

  ##  Functions from R/utils.R
  repo <-
    git_repo_extract(url_or_repo = repo)

  # Detect whether repository exists
  if (isTRUE(repo_check)) {
    if (httr::http_error(paste0("https://github.com/", repo))) stop("Repository may not exist")
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
  func_mk_dir(
    target_dir = target_dir,
    verbose = verbose,
    overwrite = overwrite
  )

  # Functions from R/fgit.R
  # clone repot to target_dir
  fgit_clone_from_url(fgit_url,
    target_dir = target_dir,
    branch,
    overwrite,
    verbose
  )

  # Return target_dir to parent environmental
  if (isTRUE(return_dir)) target_dir <<- target_dir
}
