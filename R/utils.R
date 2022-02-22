#' A function to make directory
#'
#' @param target_dir
#'
#' Path of target Directory
#'
#' @param verbose
#'
#' Verbose logs. Default is `TRUE`
#'
#' @param overwrite
#'
#' Overwrite the exist directories. Default is `FALSE`
#'
func_mk_dir <-
  function(target_dir,
           overwrite = FALSE,
           verbose = TRUE) {
    # In case target dir exists
    # if overwrite is FALSE
    # report an Error

    if (dir.exists(target_dir)) {
      if (isFALSE(overwrite)) {
        err_msg <-
          paste(
            target_dir,
            "exists! Please resolve it.
              Or set `overwrite = TRUE` to overwrite automatically"
          )
        stop(err_msg)
      } else {
        # If overwrite is TRUE
        # remove target dir
        rm_cmd <-
          paste("rm -rf", target_dir)
        system(rm_cmd)
        # Report a message
        if (isTRUE(verbose)) {
          message(target_dir, " has been empty.")
        }
      }
    }
    # Create target dir
    dir.create(target_dir, recursive = TRUE)
  }

#' Extract the Repository Name from URL or Name
#'
#' @param url_or_repo
#'
#' URL or Name from GitHub.com
#'
#' @param repo_check
#'
#' Repo Existence Check
#'
#' @return
#' Character like user/repository
#'
git_repo_extract <-
  function(url_or_repo, repo_check = TRUE) {
    # Check wheter input is a repo url
    if (grepl("^http(|s)://|github.com/", url_or_repo)) {
      # message("Try to clone from repository's url")
      # Remove .git from URL
      url <-
        gsub(".git$", "", url_or_repo)
      # Remove domain from URL
      repo <-
        gsub("http(|s)://github.com/|github.com/", "", url)
    } else {
      # message("Try to clone by repository's name")
      repo <- url_or_repo
    }

    # Detect whether repository exists
    if (isTRUE(repo_check)) {
      if (httr::http_error(paste0("https://github.com/", repo))) stop("Repository may not exist")
    }

    return(repo)
  }
