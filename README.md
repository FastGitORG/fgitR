
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fgitR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

[FastGit](https://doc.fastgit.org/) can work as a mirror of GitHub to
make significant acceleration.

`fgitR` is a package to do git operation with FastGit automatically.

For current stage, `fgitR` is only tested under macOS, and it should
works well on OS with POSIX. For Windows, we will test and fix in the
future.

## Installation

Once the initial development finish, we will post `fgitR` to CRAN. So
for, please install development version of `fgitR` from GitHub:
<!-- You can install the released version of fgitR from [CRAN](https://CRAN.R-project.org) with: -->

``` r
# For initial install
remotes::install_github("FastGitORG/fgitR")

# For upgrade installed `fgitR`
fgitR::fgitR_install("FastGitORG/fgitR")
```

## Install package from Source

``` r
library(fgitR)

# fgitR can install package by Repository's Name
# fgitR_install("https://github.com/r-lib/diffviewer")

# fgitR can install package by Repository's URL
fgitR_install("r-lib/diffviewer")
#> Try to clone by repository's name
#> Repo has been cloned to/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//RtmpaIUsRg/r-lib/diffviewer
#> 
#>      checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/RtmpaIUsRg/r-lib/diffviewer/diffviewer/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/RtmpaIUsRg/r-lib/diffviewer/diffviewer/DESCRIPTION’
#>   ─  preparing ‘diffviewer’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘diffviewer_0.1.1.9000.tar.gz’
#>      
#> Running /Library/Frameworks/R.framework/Resources/bin/R CMD INSTALL \
#>   /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//RtmpaIUsRg/diffviewer_0.1.1.9000.tar.gz \
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

## To-Do

-   [x] Branch
-   [ ] Head
-   [ ] Commit (may be imported from git2r)
-   [ ] Pull
-   [ ] Push

## Code of Conduct

Please note that the fgitR project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
