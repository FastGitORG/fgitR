
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fgitR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Codecov test
coverage](https://codecov.io/gh/FastGitORG/fgitR/branch/main/graph/badge.svg)](https://app.codecov.io/gh/FastGitORG/fgitR?branch=main)
<!-- badges: end -->

[FastGit](https://doc.fastgit.org/) can work as a mirror of GitHub to
make significant acceleration.

`fgitR` is a package to do git operation with FastGit automatically. \##
Installation

Once the initial development finish, we will post `fgitR` to CRAN. So
for, please install development version of `fgitR` from GitHub:
<!-- You can install the released version of fgitR from [CRAN](https://CRAN.R-project.org) with: -->

``` r
# For initial install
remotes::install_github("FastGitORG/fgitR")

# For upgrade installed `fgitR`
fgitR::fgit_install("FastGitORG/fgitR")
```

## Install package from Source

``` r
library(fgitR)
#> 
#>     fgitR is created by Han Chen and maintained by FastGit UK Team who creates fastgit.org.
#> 

# fgitR can install package by Repository's Name
# fgitR_install("https://github.com/r-lib/diffviewer")

# fgitR can install package by Repository's URL
fgit_install("r-lib/diffviewer")
#> cloning into '/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//Rtmp1wEK3o/r-lib/diffviewer'...
#> Receiving objects:   1% (4/398),   31 kb
#> Receiving objects:  11% (44/398),   31 kb
#> Receiving objects:  21% (84/398),   31 kb
#> Receiving objects:  31% (124/398),   47 kb
#> Receiving objects:  41% (164/398),   47 kb
#> Receiving objects:  51% (203/398),   63 kb
#> Receiving objects:  61% (243/398),   79 kb
#> Receiving objects:  71% (283/398),   79 kb
#> Receiving objects:  81% (323/398),   79 kb
#> Receiving objects:  91% (363/398),  234 kb
#> Receiving objects: 100% (398/398),  234 kb, done.
#> Repo has been cloned to /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//Rtmp1wEK3o/r-lib/diffviewer
#> jsonlite (1.7.3 -> 1.8.0) [CRAN]
#> Installing 1 packages: jsonlite
#> Installing package into '/Users/chenhan/R_lib_usr'
#> (as 'lib' is unspecified)
#> 
#>   There is a binary version available but the source version is later:
#>          binary source needs_compilation
#> jsonlite  1.7.3  1.8.0              TRUE
#> installing the source package 'jsonlite'
#> * checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/Rtmp1wEK3o/r-lib/diffviewer/DESCRIPTION’ ... OK
#> * preparing ‘diffviewer’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘diffviewer_0.1.1.9000.tar.gz’
#> 
#> Running /Library/Frameworks/R.framework/Resources/bin/R CMD INSTALL \
#>   /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//Rtmp1wEK3o/diffviewer_0.1.1.9000.tar.gz \
#>   --install-tests 
#> * installing to library ‘/Users/chenhan/R_lib_usr’
#> * installing *source* package ‘diffviewer’ ...
#> ** using staged installation
#> ** R
#> ** inst
#> ** byte-compile and prepare package for lazy loading
#> ** help
#> *** installing help indices
#> ** building package indices
#> ** testing if installed package can be loaded from temporary location
#> ** testing if installed package can be loaded from final location
#> ** testing if installed package keeps a record of temporary installation path
#> * DONE (diffviewer)
```

## List all branch from Remote

``` r
branch_ls <-
  fgit_branch("FastGitORG/fgitR")

branch_ls
#> [1] "HEAD"             "refs/heads/git2r" "refs/heads/main"
```

### Reinventing the wheel?

For the initially consideration, we believe it is necessary to add
following functions:

-   Commit
-   Pull
-   Push

Due to `git` is not only clone to local, but also contribute back. But
in the `git clone` or `fgit clone` procedure, the remote will be set as
`fastgit.org` or other mirror domain. Hence, there is nothing special to
make further operations.

## Bug report

Feel free to [let me know](mailto://chenhan28@gmail.com) once it’s
broken or just open an
<a class="github-button" href="https://github.com/FastGitORG/fgitR/issues" data-color-scheme="no-preference: light; light: light; dark: dark;" data-size="large" aria-label="Issue FastGitORG/fgitR on GitHub">Issue</a>.

## Code of Conduct

Please note that the fgitR project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
