#' Git Clone by FastGit's URL
#'
#' @param fgit_url
#'
#' The repository's name from FastGit.org
#'
#' @param target_dir
#'
#' The output directory
#'
#' @param branch
#'
#' Clone from which branch.
#'
#' @param verbose
#'
#' Verbose logs. Default is `TRUE`
#'
fgit_clone_from_url <- function(fgit_url,
                                target_dir,
                                branch = NULL,
                                # overwrite = FALSE,
                                verbose = TRUE) {

  # For default branch
    if (is.null(branch)) {
      git2r::clone(url = fgit_url, local_path = target_dir)
    } else {

      # Detect branch existence
      ## Get branch list
      ranch_ls <-
        git2r::remote_ls(fgit_url)

      # Stop once branch not exist
      if (!any(grepl(paste0(branch, "$"), x = names(ranch_ls)))) {
        stop(branch, " branch does not exist")
      }

      git2r::clone(url = fgit_url, local_path = target_dir, branch = branch)
    }

  message(paste0("Repo has been cloned to ", target_dir))
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
#' @return
#'
#' No return value, called for side effects
#'
#' @export
#'
#' @examples
#'\dontrun{
#' fgit_clone("https://github.com/womeimingzi11/fgitR", overwrite = TRUE)
#' fgit_clone("womeimingzi11/fgitR", overwrite = TRUE)
#' }
fgit_clone <- function(repo,
                       dir = tempdir(),
                       branch = NULL,
                       repo_check = TRUE,
                       overwrite = FALSE,
                       verbose = TRUE) {
  # Convert URL to Repo
  # For repo in name format
  # nothing will happen

  ##  Functions from R/utils.R
  repo <-
    git_repo_extract(url_or_repo = repo)

  # Set the domain of fastgit
  fast_git_domain <-
    "https://hub.fastgit.xyz/"

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
    verbose
  )
}
