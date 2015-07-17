#!/usr/bin/env Rscript

options(repos = c(CRAN = "http://cran.rstudio.com"))
update.packages(checkBuilt=TRUE)

install.packages(c(
                   "Rcpp",
                   "devtools",
                   "ggplot2",
                   "lubridate",
                   "caret",
				   "getopt"
                  ),
                   dependencies = TRUE)
