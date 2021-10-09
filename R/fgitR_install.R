#' Install package from GitHub by FastGit accelerating
#'
#' @param url
#'
#' The repository name or url from GitHub.com
#'
#' @export
#'
#' @examples
#' fgitR_install("https://github.com/womeimingzi11/fgitR")
#' fgitR_install("womeimingzi11/fgitR")
fgitR_install <-
  function(repo) {
    # Clone repo to temp directory
    # cloned directory will return
    # as target_dir
    fgit_clone(repo, overwite = TRUE, return_dir = TRUE)

    # List sub directory
    # structure as user/repo/repo
    source_dir <-
      list.files(target_dir, full.names = TRUE)

    # Install package from source directory
    devtools::install(pkg = source_dir)
  }
