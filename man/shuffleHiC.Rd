% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shuffleHiC.R
\name{shuffleHiC}
\alias{shuffleHiC}
\title{Shuffle a symmetric matrix}
\usage{
shuffleHiC(MAT, symmetric = T)
}
\arguments{
\item{MAT}{A Hi-C matrix: can be produced by `select_subset()`.}

\item{symmetric}{In some special cases you might not want to get a symmetric matrix back. Set this argument on FALSE.}
}
\value{
A shuffled version of the input: either a list with the shuffled `z` (when using `select_subset`) or a shuffled matrix.
}
\description{
ShuffleHiC shuffles a matrix from `select_subset()`` diagonal-wise. That is, every diagonal in the matrix is shuffled independently.
}
\examples{
\dontrun{
## Shuffle a region on chromosome 1
HiCregion <- select_subset(EXP, chrom = "chr1", start = 15e6, end = 20e6)
HiCregion_shuffled <- shuffleHiC(HiCregion)

# plot observed/expected
image(HiCregion$z / HiCregion_shuffled$z)
}
}
