\name{skktest}
\alias{skktest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Srivastava-Katayama-Kano test statistic
}
\description{
Calculates the two sample test statistic and p-value for the Srivastava-Katayama-Kano test.
}
\usage{
skktest(X, Y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{X}{
A matrix of dimension \eqn{n \times k} whose rows represent the samples collected from \eqn{n} individuals from the first group on \eqn{k} variates.
}
  \item{Y}{
A matrix of dimension \eqn{m \times k} whose rows correspond to samples collected from \eqn{m} individuals from the second group on \eqn{k} variates. 

Default value is null. If not specified, the function performs a one-sample test using X.
}
}
\value{
A \eqn{2 \times 1} vector consisting of the test statistic and the p-value.
}

\details{
The Srivastava-Katayama-Kano test statistic is used to test equality of mean vectors for two groups of multivariate observations, where the dimension is greater than the sample size. \code{skktest} takes matrices \code{X} and \code{Y} as arguments whose rows represent samples from two groups respectively. Depending on the values in \code{X} and \code{Y}, the function initially determines whether to perform a one sample test (\eqn{\sum_{i,j} X_{i,j}^2 = 0} or \eqn{\sum_{i,j} Y_{i,j}^2 = 0}) or a two-sample test. The appropriate test statistic is then calculated and is returned along with the p-value which is calculated using right-tailed normal distribution.
}

\references{
Srivastava, M. S., Katayama, S. and Kano, Y. (2013) A two sample test in high dimensional data, Journal of Multivariate Analysis, 114, 349 -- 358.
}
\author{
Deepak N. Ayyala
}

\examples{
data(diffMethylData)
skktest(diffMethylData$region1.x, diffMethylData$region1.y)
# skktest(diffMethylData$region2.x, diffMethylData$region2.y)
}
