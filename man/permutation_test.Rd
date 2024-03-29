% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/permutation_test.R
\name{permutation_test}
\alias{permutation_test}
\title{Run permutation test on PCA analysis.}
\usage{
permutation_test(
  pca_data,
  pc_n = 5,
  n = 100,
  scale = TRUE,
  cor.method = "pearson"
)
}
\arguments{
\item{pca_data}{data fed to the `prcomp` function. Remove non-continuous variables.}

\item{pc_n}{the number of PCs to collect variance explained from.}

\item{n}{the number of times to permute that data. **Warning:** high values
will take a long time to compute.}

\item{scale}{whether the PCA variables should be scaled (default = TRUE).}

\item{cor.method}{method to use for correlations (default = "pearson").
Alternative is "spearman".}
}
\value{
object of class `permutation_test`
* `$permuted_variances` n x pc_no matrix of variances explained by first
pc_no PCs in n permutations of original data.
* `$permuted_correlations` list of length n of significant pairwise
correlations in n permutations of the data (<= 0.05).
* `$actual_variances` pc_n x 2 tibble of variances explained by first pc_n
PCs with original data.
* `$actual_correlations` the number of significant pairwise correlations (<=
0.05) in the original data.
}
\description{
Permute data fed to PCA a given number of times, collecting the number of
significant pairwise correlations in the permuted data and the variances
explained for a given number of PCs.
}
\details{
**Superseded by the `correlation_test` function for pairwise correlations and
the `pca_test` function for variance explained and loadings.
}
\examples{
\dontrun{permutation_test(pca_data, pc_n = 5, n = 100, scale = TRUE, cor.method = 'pearson')}
\dontrun{permutation_test(pca_data, pc_n = 10, n = 500, scale = FALSE, cor.method = 'spearman')}
}
