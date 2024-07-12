\name{methmage}
\alias{methmage}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
MethMAGE test
}
\description{
Calculates a generalized estimating equation (GEE) based test statistic as used in MethMAGE package.
}
\usage{
methmage(X, Y)
}

\arguments{
  \item{X}{
A matrix of dimension \eqn{n \times k} whose rows represent the samples collected from \eqn{n} individuals from the first group on \eqn{k} variates.
}
  \item{Y}{
A matrix of dimension \eqn{m \times k} whose rows correspond to samples collected from \eqn{m} individuals from the second group on \eqn{k} variates.
}
}
\value{
A \eqn{2 \times 1} vector consisting of the test statistic and the p-value.
}
\details{
\code{methmage} uses a generalized estimating equations (GEE) approach to test for equality of mean vectors for two groups of multivariate observations. Using a first order autoregressive (AR(1)) structure as the working correlation matrix, \code{methmage} uses \code{geeglm} function from the \strong{geepack} package to estimate the coefficients and construct the test statistic. To ensure convergence in modest time, maximum number of iterations and convergence criterion (epsilon) are set at 100 and \eqn{10^{-8}} respectively.
}

\references{
Frankhouser, D. E., et al. (2014) PrEMeR-CG: inferring nucleotide level DNA methylation values from MethylCap-seq data, Bioinformatics, 30 (24), 3567 -- 3574.
}
\author{
Deepak N. Ayyala, David E. Frankhouser
}


\examples{
data(diffMethylData)
methmage(diffMethylData$region1.x, diffMethylData$region1.y)
# methmage(diffMethylData$region2.x, diffMethylData$region2.y)
}
