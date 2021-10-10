
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
fgitR::fgit_install("FastGitORG/fgitR")
```

## Install package from Source

``` r
library(fgitR)

# fgitR can install package by Repository's Name
# fgitR_install("https://github.com/r-lib/diffviewer")

# fgitR can install package by Repository's URL
fgit_install("r-lib/diffviewer")
#> Try to clone by repository's name
#> Repo has been cloned to/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//RtmpOKf9w5/r-lib/diffviewer
#> 
#>      checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/RtmpOKf9w5/r-lib/diffviewer/diffviewer/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/RtmpOKf9w5/r-lib/diffviewer/diffviewer/DESCRIPTION’
#>   ─  preparing ‘diffviewer’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘diffviewer_0.1.1.9000.tar.gz’
#>      
#> Running /Library/Frameworks/R.framework/Resources/bin/R CMD INSTALL \
#>   /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//RtmpOKf9w5/diffviewer_0.1.1.9000.tar.gz \
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
  fgit_branch("https://github.com/tidyverse/tidyverse/")
#> Try to clone from repository's url

head(branch_ls, n = 15)
#>  [1] "heads/bump-reprex-version" "heads/fix-pkgdown"        
#>  [3] "heads/gh-pages"            "heads/master"             
#>  [5] "heads/more-import-from"    "pull/1/head"              
#>  [7] "pull/100/head"             "pull/106/head"            
#>  [9] "pull/109/head"             "pull/117/head"            
#> [11] "pull/120/head"             "pull/122/head"            
#> [13] "pull/122/merge"            "pull/123/head"            
#> [15] "pull/123/merge"
```

## To-Do

-   [x] Branch
-   [ ] Head

### Questionary

For the initially consideration, we believe it is necessary to add
following functions:

-   Commit
-   Pull
-   Push

Due to `git` is not only clone to local, but also contribute back. But
in the `git clone` or `fgit clone` procedure, the remote will be set as
`fastgit.org` or other mirror domain. Hence, there is nothing special to
make further operations.

There is definitely no reason to reinvent the wheel, import functions
from `git2r` to implement `git clone`, `git pull` and `git push` should
be fantastic. However, `git2r` is a GPL licensed project, while `fgitR`
is under MIT. I am not sure if it is accpetable to import involving
functions from `git2r` to `fgitR` without changing license?

**P.S. I am not considering to change my license.**

## Bug report

It’s very common for API upgrades to make the downstream application,
like amapGeocode,which is unavailable. Feel free to [let me
know](mailto://chenhan28@gmail.com) once it’s broken or just open an
<a class="github-button" href="https://github.com/FastGitORG/fgitR/issues" data-color-scheme="no-preference: light; light: light; dark: dark;" data-size="large" aria-label="Issue FastGitORG/fgitR on GitHub">Issue</a>.

## Code of Conduct

Please note that the fgitR project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
