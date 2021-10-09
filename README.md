
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
remotes::install_github("womeimingzi11/fgitR")

# For upgrade installed `fgitR`
fgitR::fgitR_install("womeimingzi11/fgitR")
```

<del>
And Yes, in the future, there will be a function like
`fgitR::install_fgit("womeimingzi11/fgitR")` to accelerate the
installation of development version of `fgitR`.
</del>

## Install package from Source

``` r
library(fgitR)
#> 
#>     We thank FastGit UK Team who create fastgit.org.
#>     Due to the compatibility of license,
#>     git and its derived libs are not included in this package.
#>     Before you start using fgitR, please make sure you have installed git.
#>     For Windows, fgitR is not avaiable yet.
#> 

# fgitR can install package by Repository's URL
fgitR_install("r-lib/diffviewer")
#> Try to clone by repository's name
#> Repo has been cloned to/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//Rtmp1UTIik/r-lib/diffviewer
#> 
#>      checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/Rtmp1UTIik/r-lib/diffviewer/diffviewer/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/Rtmp1UTIik/r-lib/diffviewer/diffviewer/DESCRIPTION’
#>   ─  preparing ‘diffviewer’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘diffviewer_0.1.1.9000.tar.gz’
#>      
#> Running /Library/Frameworks/R.framework/Resources/bin/R CMD INSTALL \
#>   /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//Rtmp1UTIik/diffviewer_0.1.1.9000.tar.gz \
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

# fgitR can install package by Repository's Name
fgitR_install("https://github.com/r-lib/diffviewer")
#> Try to clone from repository's url
#> /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//Rtmp1UTIik/r-lib/diffviewerhas been empty.
#> Repo has been cloned to/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//Rtmp1UTIik/r-lib/diffviewer
#> 
#>      checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/Rtmp1UTIik/r-lib/diffviewer/diffviewer/DESCRIPTION’ ...  ✓  checking for file ‘/private/var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T/Rtmp1UTIik/r-lib/diffviewer/diffviewer/DESCRIPTION’
#>   ─  preparing ‘diffviewer’:
#>      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘diffviewer_0.1.1.9000.tar.gz’
#>      
#> Running /Library/Frameworks/R.framework/Resources/bin/R CMD INSTALL \
#>   /var/folders/wh/j50n_j8s28l0t3wlmkw6rsdc0000gn/T//Rtmp1UTIik/diffviewer_0.1.1.9000.tar.gz \
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

<!-- What is special about using `README.Rmd` instead of just `README.md`? You can include R chunks like so: -->
<!-- ```{r cars} -->
<!-- summary(cars) -->
<!-- ``` -->
<!-- You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/master/examples>. -->
<!-- You can also embed plots, for example: -->
<!-- ```{r pressure, echo = FALSE} -->
<!-- plot(pressure) -->
<!-- ``` -->
<!-- In that case, don't forget to commit and push the resulting figure files, so they display on GitHub and CRAN. -->

## Code of Conduct

Please note that the fgitR project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
