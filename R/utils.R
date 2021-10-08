func_mk_dir <-
  function(
    target_dir,
    verbose,
    overwite
  ) {
    # In case target dir exists
    # if overwrite is FALSE
    # report an Error

    if (dir.exists(target_dir)) {
      if (isFALSE(overwite)) {
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
          message(target_dir, "has been empty.")
        }
      }
    }
    # Create target dir
    dir.create(target_dir, recursive = TRUE)
  }
