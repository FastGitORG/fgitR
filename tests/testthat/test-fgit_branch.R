test_that("fgit_branch-Wrong repository", {
  skip_if_offline(host = "fastgit.org")

  target_repo <-
    "r-lib/diffviewer_mistake"

  # Wrong branch name
  expect_error(fgit_branch(target_repo),
               "Repository may not exist")
})
