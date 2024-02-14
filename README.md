# dlmPatched

This is a patched version of Giovanni Petris' `dlm` package for [R](https://www.r-project.org/), which provides routines for working with dynamic linear models (DLMs). The 'official' version on [CRAN](https://cran.r-project.org/mirrors.html) contains some errors in the underlying `C` code which can cause memory leaks when working with complex DLMs. The code is also not guaranteed to be compatible with some implementations of the BLAS / LAPACK routines that are used throughout to calculate singular value decompositions. 

These issues, and their solutions, were drawn to the attention of the maintainer for the official version of the package in September 2022, but have not been fixed at the time of writing (February 2024). I have therefore cloned the current official version (1.1-6), renumbered it as 1.1-600 and implemented the required patches. Subsequent updates will continue the numbering, to discriminate between the patch and the official version. 

# Usage

Upon installation (see below), this patch can be used in exactly the same way as the official version of the package. In particular, it can be loaded using `library(dlm)`. 

# Installation

If you have the `devtools` package installed in `R` then, from the `R` command line, the package can be installed using:

```
library(devtools)
install_github("Richard-Chandler/dlmPatched")
```

# References

> Giovanni Petris (2010). An R Package for Dynamic Linear Models. _Journal of Statistical Software_, **36(12)**, 1-16. URL
  [https://www.jstatsoft.org/v36/i12/](https://www.jstatsoft.org/v36/i12/).

> Petris, Petrone, and Campagnoli. _Dynamic Linear Models with R_.  Springer (2009).
