#' Git Clone by FastGit
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
#' fgit_clone("womeimingzi11/fgitR", overwrite = TRUE)
#'
fgit_clone <- function(
  repo,
  overwite = FALSE,
  verbose = TRUE
) {
  # Check whether git is availiable
  git_check
  # Set the domain of fastgit
  fast_git_domain <-
    "https://hub.fastgit.org/"

  # Jointing the Repo name and FastGit
  # as the url of Repo
  fast_repo <-
    paste0(fast_git_domain, repo)

  # Create tmp dir
  tmp_dir <-
    file.path(tempdir(), repo)

  # In case target dir exists
  # if overwrite is FALSE
  # report an Error

  if (dir.exists(tmp_dir)) {
    if (isFALSE(overwite)) {
      err_msg <-
        paste(tmp_dir, "exists! Please resolve it.
              Or set `overwrite = TRUE` to overwrite automatically")
      stop(err_msg)
    } else {
      # If overwrite is TRUE
      # remove target dir
      rm_cmd <-
        paste("rm -rf", tmp_dir)
      system(rm_cmd)
      # Report a message
      if (isTRUE(verbose)) {
        message(tmp_dir, "has been empty.")
      }
    }
  }
  # Create target dir
  dir.create(tmp_dir, recursive = TRUE)

  # Assemble the Git clone command
  # use -C argument to set the
  # target dir
  clone_cmd <-
    paste0("git -C ", tmp_dir, " clone ", fast_repo)
  system(clone_cmd)
  message(paste0("Repo has been cloned to", tmp_dir))
}
