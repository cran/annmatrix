% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autocomplete.r
\name{autocomplete}
\alias{autocomplete}
\alias{.DollarNames.annmatrix}
\alias{.AtNames.annmatrix}
\title{Auto Complete Functions for annmatrix Class}
\usage{
\method{.DollarNames}{annmatrix}(x, pattern = "")

\method{.AtNames}{annmatrix}(x, pattern = "")
}
\arguments{
\item{x}{annmatrix object.}

\item{pattern}{a regular expression used to select possible auto-completion names.}
}
\value{
A set of possible auto-completion names for row (\code{@}) or column (\code{$}) annotation fields.
}
\description{
Function used to select autocomplete options for dollar `$` and at `@` operators.
}
\author{
Karolis Koncevičius
}
