#' List all branch from a repository
#'
#' @param repo
#'
#' The repository's name from GitHub.com
#'
#' @return
#'
#' A vector of branches
#'
#' @export
#'
#' @examples
#'\dontrun{
#' fgit_branch("https://github.com/FastGitORG/fgitR")
#' fgit_branch("FastGitORG/fgitR")
#'}
fgit_branch <- function(repo) {
  # Convert URL to Repo
  # For repo in name format
  # nothing will happen

  ##  Functions from R/utils.R
  repo <-
    git_repo_extract(url_or_repo = repo)

  # Detect whether repository exists
  if (httr::http_error(paste0("https://github.com/", repo))) stop("Repository may not exist")

  # Set the domain of fastgit
  fast_git_domain <-
    "https://hub.fastgit.xyz/"

  # Jointing the Repo name and FastGit
  # as the url of Repo
  fgit_url <-
    paste0(fast_git_domain, repo)

  ## Get branch list
  ranch_ls <-
    git2r::remote_ls(fgit_url)

  names(ranch_ls)
}
