\name{dlmModPoly}
\alias{dlmModPoly}
\title{Create an n-th order polynomial DLM}
\description{
  The function creates an \eqn{n}{n-}th order polynomial DLM.
}
\usage{
dlmModPoly(order = 2, dV = 1, dW = c(rep(0, order - 1), 1),
           m0 = rep(0, order), C0 = 1e+07 * diag(nrow = order)) 
}
\arguments{
  \item{order}{order of the polynomial model. The default
    corresponds to a stochastic linear trend.}
  \item{dV}{variance of the observation noise.}
  \item{dW}{diagonal elements of the variance matrix of the system noise.}
  \item{m0}{\eqn{m_0}{m0}, the expected value of the pre-sample state vector.}
  \item{C0}{\eqn{C_0}{C0}, the variance matrix of the pre-sample state vector.}
}
  
\value{
  An object of class dlm representing the required n-th order
  polynomial model.
}
\references{Giovanni Petris (2010), An R Package for Dynamic Linear
  Models. Journal of Statistical Software, 36(12), 1-16.
  \url{https://www.jstatsoft.org/v36/i12/}.\cr
  Petris, Petrone, and Campagnoli, Dynamic Linear Models with
  R, Springer (2009).\cr
  West and Harrison, Bayesian forecasting and dynamic models
  (2nd ed.), Springer, 1997.}
\author{Giovanni Petris \email{GPetris@uark.edu}}

\seealso{\code{\link{dlmModARMA}}, \code{\link{dlmModReg}},
  \code{\link{dlmModSeas}}}
\examples{
## the default
dlmModPoly()
## random walk plus noise
dlmModPoly(1, dV = .3, dW = .01)
}
\keyword{misc}% at least one, from doc/KEYWORDS
