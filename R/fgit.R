fgit_clone <- function(
  repo,
  overwite = FALSE,
  verbose = TRUE
) {
  fast_git_domain <-
    "https://hub.fastgit.org/"

  fast_repo <-
    paste0(fast_git_domain, repo)

  tmp_dir <-
    file.path(tempdir(), repo)

  if(dir.exists(tmp_dir) && isFALSE(overwite)){
    err_msg <-
      paste(tmp_dir,
            "exists! Please resolve it or set `overwrite = TRUE` to overwrite automatically")
    stop(err_msg)
  } else {
    if(dir.exists(tmp_dir) && isTRUE(overwite)) {
      rm_cmd <-
        paste("rm -rf", tmp_dir)
      system(rm_cmd)
      if(isTRUE(verbose)){
        message(tmp_dir, "has been empty.")
      }
    }
    dir.create(tmp_dir, recursive = TRUE)
    clone_cmd <-
      paste0("git -C ", tmp_dir, " clone ", fast_repo)
    system(clone_cmd)
  }
}
