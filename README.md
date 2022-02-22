
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fgitR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Codecov test
coverage](https://codecov.io/gh/FastGitORG/fgitR/branch/main/graph/badge.svg)](https://codecov.io/gh/FastGitORG/fgitR?branch=main)
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
#> Try to clone by repository's name
#> cloning into '/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//RtmpZU5SSo/r-lib/diffviewer'...
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
#> Repo has been cloned to /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//RtmpZU5SSo/r-lib/diffviewer
#> 
#> * checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/RtmpZU5SSo/r-lib/diffviewer/DESCRIPTION’ ... OK
#> * preparing ‘diffviewer’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘diffviewer_0.1.1.9000.tar.gz’
#> 
#> Running /Library/Frameworks/R.framework/Resources/bin/R CMD INSTALL \
#>   /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//RtmpZU5SSo/diffviewer_0.1.1.9000.tar.gz \
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

branch_ls
#>  [1] "HEAD"                           "refs/heads/bump-reprex-version"
#>  [3] "refs/heads/fix-pkgdown"         "refs/heads/gh-pages"           
#>  [5] "refs/heads/main"                "refs/pull/1/head"              
#>  [7] "refs/pull/100/head"             "refs/pull/106/head"            
#>  [9] "refs/pull/109/head"             "refs/pull/117/head"            
#> [11] "refs/pull/120/head"             "refs/pull/122/head"            
#> [13] "refs/pull/122/merge"            "refs/pull/123/head"            
#> [15] "refs/pull/123/merge"            "refs/pull/124/head"            
#> [17] "refs/pull/131/head"             "refs/pull/139/head"            
#> [19] "refs/pull/14/head"              "refs/pull/143/head"            
#> [21] "refs/pull/152/head"             "refs/pull/158/head"            
#> [23] "refs/pull/165/head"             "refs/pull/166/head"            
#> [25] "refs/pull/17/head"              "refs/pull/172/head"            
#> [27] "refs/pull/183/head"             "refs/pull/185/head"            
#> [29] "refs/pull/187/head"             "refs/pull/189/head"            
#> [31] "refs/pull/190/head"             "refs/pull/191/head"            
#> [33] "refs/pull/192/head"             "refs/pull/193/head"            
#> [35] "refs/pull/195/head"             "refs/pull/197/head"            
#> [37] "refs/pull/198/head"             "refs/pull/2/head"              
#> [39] "refs/pull/201/head"             "refs/pull/202/head"            
#> [41] "refs/pull/204/head"             "refs/pull/205/head"            
#> [43] "refs/pull/206/head"             "refs/pull/207/head"            
#> [45] "refs/pull/209/head"             "refs/pull/210/head"            
#> [47] "refs/pull/212/head"             "refs/pull/213/head"            
#> [49] "refs/pull/214/head"             "refs/pull/215/head"            
#> [51] "refs/pull/220/head"             "refs/pull/234/head"            
#> [53] "refs/pull/239/head"             "refs/pull/254/head"            
#> [55] "refs/pull/257/head"             "refs/pull/258/head"            
#> [57] "refs/pull/260/head"             "refs/pull/262/head"            
#> [59] "refs/pull/263/head"             "refs/pull/266/head"            
#> [61] "refs/pull/282/head"             "refs/pull/283/head"            
#> [63] "refs/pull/283/merge"            "refs/pull/4/head"              
#> [65] "refs/pull/45/head"              "refs/pull/45/merge"            
#> [67] "refs/pull/49/head"              "refs/pull/5/head"              
#> [69] "refs/pull/5/merge"              "refs/pull/52/head"             
#> [71] "refs/pull/52/merge"             "refs/pull/6/head"              
#> [73] "refs/pull/60/head"              "refs/pull/69/head"             
#> [75] "refs/pull/7/head"               "refs/pull/71/head"             
#> [77] "refs/pull/74/head"              "refs/pull/77/head"             
#> [79] "refs/pull/78/head"              "refs/pull/79/head"             
#> [81] "refs/pull/79/merge"             "refs/pull/8/head"              
#> [83] "refs/pull/80/head"              "refs/pull/82/head"             
#> [85] "refs/pull/89/head"              "refs/tags/v1.0.0"              
#> [87] "refs/tags/v1.1.0"               "refs/tags/v1.1.1"              
#> [89] "refs/tags/v1.2.0"               "refs/tags/v1.2.1"              
#> [91] "refs/tags/v1.3.0"               "refs/tags/v1.3.1"
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
