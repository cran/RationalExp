% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimDev.R
\name{estimDev}
\alias{estimDev}
\title{Estimation of the minimal deviations from rational expectations with unconstrained information set g*}
\usage{
estimDev(psi, y)
}
\arguments{
\item{psi}{vector of subjective expectations}

\item{y}{vector of realisations of an individual outcome.}
}
\description{
This function estimates of the minimal deviations from rational expectations with unconstrained information set. Both vectors should have the same length. If not, one can randomly select a subset of the longer vector with length equal to that of the shorter one. The function returns a function via the approxfun of the package stats. This function can then be evaluated directly on a desired grid.
}
\examples{
n_p=200
n_y=200
sig=0.1
u=1
b=0.10
a=2
rho= 0.4
psi <- rnorm(n_p,0,u)
pp_y <- runif(n_y,0,1)
zeta <- rnorm(n_y,a,sig)
zeta1 <- rnorm(n_y,-a,sig)
pp1_y <- 1*(pp_y <b)
pp2_y <- 1*(pp_y >1-b)
pp3_y <- 1*(pp_y <=(1-b) & pp_y >=b)
psi_y <-rnorm(n_p,0,u)
y = rho*psi_y+ pp1_y*zeta + pp2_y*zeta1

g_star <- estimDev(psi,y)


}
