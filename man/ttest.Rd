\name{ttest}
\alias{ttest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One sample and two sample \eqn{t}-test using total methylation signal per region
}
\description{
Performs a two-sample \eqn{t}-test using the total signal observed across all variates in multivariate data.
}
\usage{
ttest(X, Y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{X}{
A matrix of dimension \eqn{n \times k} whose rows represent the samples collected from \eqn{n} individuals from the first group on \eqn{k} variates.
}
  \item{Y}{
A matrix of dimension \eqn{m \times k} whose rows correspond to samples collected from \eqn{m} individuals from the second group on \eqn{k} variates. Default value is NULL. If not specified, the function performs a one-sample test using X.
}
}
\value{
A \eqn{2 \times 1} vector consisting of the test statistic and the p-value.
}
\details{
Given multivariate observations collected from two groups, a straightforward univariate test for equality of mean vectors can be constructed by converting the multivariate observations into univariate measures. \code{ttest} tests equality of means by converting the \eqn{k \times 1} observations into sum, representing each sample by total measurement observed across the variates. Using this total measure as our observed samples, a two-sample \eqn{t}-test is performed. If both groups contain all zero observations, (\eqn{\sum_{i,j} X_{i,j}^2 = 0} and \eqn{\sum_{i,j} Y_{i,j}^2 = 0}), then the test statistic is set equal to 0 and a p-value of 1 is returned.
}

\author{
Deepak N. Ayyala
}


\examples{
data(diffMethylData)
ttest(diffMethylData$region1.x, diffMethylData$region1.y)
# ttest(diffMethylData$region2.x, diffMethylData$region2.y)
}
