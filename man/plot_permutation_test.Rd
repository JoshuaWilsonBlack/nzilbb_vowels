% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_permutation_test.R
\name{plot_permutation_test}
\alias{plot_permutation_test}
\title{Create plot of results of permutation test.}
\usage{
plot_permutation_test(permutation_results, violin = FALSE)
}
\arguments{
\item{permutation_results}{object of class `permutation_results`.}

\item{violin}{Determines whether the variances explained are depicted by
distinct violin plots for each PC or by connected lines. the advantage of
lines is that they correctly indicate that values for each PC depend on one
another within a given permutation. That is, if an earlier PC soaks up a
lot of the variation in a data set, then there is less variation left to
explain by subsequent PCs. Default value is `FALSE`.}
}
\value{
`ggplot` object.
}
\description{
Plots results of a permutation test carried out with the `permutation_test`
function.
}
\examples{
\dontrun{plot_permutation_test(permutation_results)}
}
