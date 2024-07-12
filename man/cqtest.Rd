\name{cqtest}
\alias{cqtest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Chen-Qin test statistic
}
\description{
Calculates the two sample Chen-Qin test statistic and p-value.
}
\usage{
cqtest(X, Y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
A matrix of dimension \eqn{n \times k} whose rows represent the samples collected from \eqn{n} (\eqn{\geq 3}) individuals from the first group on \eqn{k} variates.
}
  \item{Y}{
A matrix of dimension \eqn{m \times k} whose rows correspond to samples collected from \eqn{m} (\eqn{\geq 3}) individuals from the second group on \eqn{k} variates. 

Default value is null. If not specified, the function performs a one-sample test using X.
}
}
\value{
A \eqn{2 \times 1} vector consisting of the test statistic and the p-value.
}
\references{
Chen, S. X. and Qin, Y. (2010) A two-sample test for high-dimensional data with applications in gene-set testing, Annals of Statistics, 38, 808 -- 835.
}
\author{
Deepak N. Ayyala, Javkhlan-Ochir Ganbat.
}

\details{
The Chen-Qin test statistic is used to test equality of mean vectors for two groups of multivariate observations, where the dimension is greater than the sample size. \code{cqtest} takes matrices \code{X} and \code{Y} as arguments whose rows correspond to samples from the two groups respectively. Depending on the values in \code{X} and \code{Y}, the function initially determines whether to perform a one-sample test ( \eqn{\mathop{\sum}_{i,j} X_{ij}^2 = 0} or \eqn{\mathop{\sum}_{i,j} Y_{ij}^2 = 0}) or a two-sample test. The appropriate test statistic is then calculated and is returned along with the p-value which is calculated using right-tailed normal distribution.

\bold{Note:} The Chen-Qin test involves calculations on the data which require at least three samples in both the groups to evaluate the test statistic. See Chen and Qin (2010) for further details. 
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
data(diffMethylData)
cqtest(diffMethylData$region1.x, diffMethylData$region1.y)
# cqtest(diffMethylData$region2.x, diffMethylData$region2.y)
}
