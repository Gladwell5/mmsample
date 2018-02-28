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
v_list <- c("x", "y", "x")
ruler(as.matrix(df[2:10, v_list]), as.numeric(df[1, v_list]), MASS::ginv(cov(ds[, v_list])))
}
