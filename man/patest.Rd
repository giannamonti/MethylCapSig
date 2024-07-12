\name{patest}
\alias{patest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Park-Ayyala test statistic
}
\description{
Calculates the two sample Park-Ayyala test statistic and p-value.
}
\usage{
patest(X, Y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{X}{
A matrix of dimension \eqn{n \times k} whose rows represent the samples collected from \eqn{n} (\eqn{\geq 4}) individuals from the first group on \eqn{k} variates.
}
  \item{Y}{
A matrix of dimension \eqn{m \times k} whose rows correspond to samples collected from \eqn{m} (\eqn{\geq 4}) individuals from the second group on \eqn{k} variates. 

Default value is null. If not specified, the function performs a one-sample test using X.
}
}
\value{
A \eqn{2 \times 1} vector consisting of the test statistic and the p-value.
}
\details{
The Park-Ayyala test statistic is used to test equality of mean vectors for two groups of multivariate observations, where the dimension is greater than the sample size. \code{patest} takes matrices \code{X} and \code{Y} as arguments whose rows represent samples from two groups respectively. Depending on the values in \code{X} and \code{Y}, the function initially determines whether to perform a one sample test (\eqn{\sum_{i,j} X_{i,j}^2 = 0} or \eqn{\sum_{i,j} Y_{i,j}^2 = 0}) or a two-sample test. The appropriate test statistic is then calculated and is returned along with the p-value which is calculated using right-tailed normal distribution.

\strong{Note:} The Park-Ayyala test statistic involves repeated computation of the covariance matrix, requiring at least four samples in both the groups. See Park and Ayyala (2013) for more details.

}
\references{
Park, J. and Ayyala, D. N. (2013) A test for the mean vector in large dimension and small samples, Journal of Statistical Planning and Inference, 143, 929 -- 943.
}
\author{
Deepak N. Ayyala, Javkhlan-Ochir Ganbat.
}


\examples{
data(diffMethylData)
patest(diffMethylData$region1.x, diffMethylData$region1.y)
# patest(diffMethylData$region2.x, diffMethylData$region2.y)
}
