test_that("fgit_clone-Do not forget overwrite", {
  skip_if_offline(host = "fastgit.org")

  target_repo <-
    "r-lib/diffviewer"
  # Init clone
  fgit_clone(target_repo)

  # Clone Twice
  expect_error(fgit_clone(target_repo), "to overwrite automatically$")
})

test_that("fgit_clone-Wrong branch", {
  skip_if_offline(host = "fastgit.org")

  target_repo <-
    "r-lib/diffviewer"

  # Wrong branch name
  expect_error(fgit_clone(target_repo,
                          overwrite = TRUE,
                          branch = "minister"),
               "branch does not exist$")
})

test_that("fgit_clone-Wrong repository", {
  skip_if_offline(host = "fastgit.org")

  target_repo <-
    "r-lib/diffviewer_mistake"

  # Wrong branch name
  expect_error(fgit_clone(target_repo,
                          overwrite = TRUE),
               "Repository may not exist")
})
