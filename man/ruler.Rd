\name{ruler}
\alias{ruler}
\title{Rcpp distance calculator}
\usage{
ruler(vR, uR, ciR)
}
\description{
Returns a vector of distances from all rows in vR to the single row uR using ciR as the inverted covariance matrix.
uR is a vector of length k, vR is an n x k matrix and ciR is a square k x k matrix. All must be numeric and dense.
}
\examples{
set.seed(123)
df <- data.frame(x = rpois(10, 20), y = rnorm(10, 50, 10))
cov_inv <- MASS::ginv(cov(df))
mmsample::ruler(as.matrix(df[2:10, ]), as.numeric(df[1, ]), cov_inv)
}
