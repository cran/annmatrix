% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subset.r
\name{subset}
\alias{subset}
\alias{[.annmatrix}
\title{Subset annmatrix Objects}
\usage{
\method{[}{annmatrix}(x, i, j, ..., drop = TRUE)
}
\arguments{
\item{x}{an R object.}

\item{i}{subset for rows.}

\item{j}{subset for columns.}

\item{...}{further arguments passed to or from methods.}

\item{drop}{if TRUE (default) subsetting a single row or column will returned a vector.}
}
\value{
A selected subset of the provided 'annmatrix' object.
}
\description{
Methods for selecting a set of rows or columns from annmatrix while keeping
the associated annotations intact.
}
\details{
\code{X[i,j]} returns a selected subset of annmatrix object. Row and column
annotations are preserved and subsetted where needed. In the special case
when only one column or row is selected in order to be consistent with the
\code{matrix} behavior the dimensions of matrix are dropped and a vector is
returned. Just like in the case of matrices the additional argument
\code{drop=FALSE} can be provided in order to return a proper matrix
instead.
}
\examples{
# construct annmatrix object
x <- matrix(rnorm(20*10), 20, 10)

coldata <- data.frame(group  = rep(c("case", "control"), each = 5),
                      gender = sample(c("M", "F"), 10, replace = TRUE))

rowdata <- data.frame(chr = sample(c("chr1", "chr2"), 20, replace = TRUE),
                      pos = runif(20, 0, 1000000))

X <- annmatrix(x, rowdata, coldata)

# annotations are preserved after subsetting
Y <- X[X@chr == "chr1", X$group == "case"]
Y@chr
Y$''

Y[, 1]
Y[, 1, drop = FALSE]

}
\seealso{
\code{as.annmatrix}
}
\author{
Karolis Koncevičius
}
