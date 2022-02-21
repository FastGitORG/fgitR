#' Install package from GitHub by FastGit accelerating
#'
#' @param repo
#'
#' The repository name or url from GitHub.com
#'
#' @param branch
#'
#' Install from which branch.
#'
#' @param repo_check
#'
#' Check the existence of repository
#'
#' @export
#'
#' @examples
#' fgit_install("https://github.com/FastGitORG/fgitR")
#' fgit_install("FastGitORG/fgitR")
fgit_install <-
  function(repo,
           branch = NULL,
           repo_check = TRUE) {
    # Clone repo to temp directory
    # cloned directory will return
    # as target_dir
    fgit_clone(repo,
      branch = branch,
      repo_check = repo_check,
      overwrite = TRUE,
      return_dir = TRUE
    )

    # List sub directory
    # structure as user/repo/repo
    source_dir <-
      list.files(target_dir, full.names = TRUE)

    # Install package from source directory
    devtools::install(pkg = source_dir)
  }
