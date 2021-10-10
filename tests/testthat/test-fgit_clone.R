test_that("Do not forget overwrite", {
  skip_on_cran()
  skip_on_os("windows")
  skip_if_offline()

  target_repo <-
    "r-lib/diffviewer"
  # Init clone
  fgit_clone(target_repo)

  # Clone Twice
  expect_error(fgit_clone(target_repo), "to overwrite automatically$")
})

test_that("Wrong branch", {
  skip_on_cran()
  skip_on_os("windows")
  skip_if_offline()

  target_repo <-
    "r-lib/diffviewer"

  # Wrong branch name
  expect_error(fgit_clone(target_repo,
                          overwite = TRUE,
                          branch = "minister"),
               "branch does not exist$")
})
