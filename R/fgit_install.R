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
#' @return
#'
#' No return value, called for side effects
#'
#' @export
#'
#' @examples
#'\dontrun{
#' fgit_install("https://github.com/FastGitORG/fgitR")
#' fgit_install("FastGitORG/fgitR")
#' }
#'
fgit_install <-
  function(repo,
           branch = NULL,
           repo_check = TRUE) {

    # Create temp dir
    temp_dir <-
      tempdir()

    # Extract repo from repo/URL
    repo <-
      git_repo_extract(repo)

    # Clone repo to temp directory
    # cloned directory will return
    # as target_dir
    fgit_clone(repo,
               dir = temp_dir,
               branch = branch,
               repo_check = repo_check,
               overwrite = TRUE
    )

    # Assemble dir/repo
    target_dir <-
      file.path(temp_dir, repo)

    # Install package from source directory
    devtools::install(pkg = target_dir)
  }
