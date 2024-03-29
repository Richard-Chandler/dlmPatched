\name{dlmSum}
\alias{dlmSum}
\alias{\%+\%}
\title{Outer sum of Dynamic Linear Models}
\description{
  \code{dlmSum} creates a unique DLM out of two or more
  independent DLMs. \code{\%+\%} is an alias for \code{dlmSum}.
}
\usage{
dlmSum(...)
x \%+\% y
}

\arguments{
  \item{\dots}{any number of objects of class \code{dlm}, or a list of
    such objects.}
  \item{x, y}{objects of class \code{dlm}.}
}
\value{
  An object of class \code{dlm}, representing the outer sum of the
  arguments.
}
\references{Giovanni Petris (2010), An R Package for Dynamic Linear
  Models. Journal of Statistical Software, 36(12), 1-16.
  \url{https://www.jstatsoft.org/v36/i12/}.\cr
  Petris, Petrone, and Campagnoli, Dynamic Linear Models with
  R, Springer (2009).
}
\author{Giovanni Petris \email{GPetris@uark.edu}}

\examples{
m1 <- dlmModPoly(2)
m2 <- dlmModPoly(1)
dlmSum(m1, m2)
m1 \%+\% m2 # same thing
}

\keyword{ts}
\keyword{misc}
