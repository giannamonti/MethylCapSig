\name{mvlognormal}
\alias{mvlognormal}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Multivariate lognormal random variable generator.
}
\description{
Given mean (Mu), variances (Sigma) and correlation structure (R) of the distribution, \code{mvlognormal} generates multivariate lognormal random variables.  
}
\usage{
mvlognormal(n, Mu, Sigma, R)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
Sample size (default value is 1).
}
  \item{Mu}{
Mean vector of length \eqn{k}.
}
  \item{Sigma}{
Vector of length \eqn{k} containing the diagonal of covariances. 
}
  \item{R}{
A \eqn{k \times k} matrix comprising the correlation structure of the variables on the log-scale, i.e. \eqn{R = cor(log(X))}.
}
}
\details{
The multivariate lognormal distribution is characterized by its associated normal distribution on the log-scale - if \eqn{X} is lognormal, then \eqn{log(X)} is normal. \code{mvlognormal} uses this relationship to generate lognormal random variables. Specifying the correlation structure of the actual variable does not guarantee validity of the associated normal distribution. Hence, the function takes correlation matrix of the log-transformed normal variable to ensure existence. 
}
\value{
Matrix of dimension \eqn{n \times k}, where \eqn{k} is the length of the mean vector.
}
\author{
Deepak N. Ayyala
}


\examples{
## Generate 10 samples with dimension 20.
X <- mvlognormal(n = 10, Mu = runif(20, 0, 1), 
      Sigma = rep(2, 20), R = toeplitz(0.5^(0:19)));
}