\name{MethylCapSig-package}
\alias{MethylCapSig-package}
\alias{MethylCapSig}
\title{
Detection of differentially methylated regions using MethylCap-seq data.
}
\description{
The \strong{MethylCapSig} package provides several test statistics useful in detecting differential methylation in genomic regions. While all the functions are illustrated using differential methylation as example, the tests are much generic and are applicable to a wide range of high dimensional problems.
}
\details{
High dimensional data collected on small sample sizes cannot be analyzed using traditional multivariate statistical techniques owing to the \emph{curse of dimensionality}. One such type of data is nucleotide-resolution methylation values obtained from MethylCap-seq experiments. To overcome the small sample issue in two sample mean vector testing problem, several test statistics have been developed by studying the asymptotic properties of functions of the random variables being considered.

\strong{MethylCapSig} provides five such test statistics to test equality of mean vectors in the two-sample case under high dimensional setting. The four multivariate tests and one univariate test all provide test statistics and p-values based on asymptotic distributions.

}
\author{Deepak N. Ayyala, David E. Frankhouser, Javkhlan-Ochir Ganbat, Guido Marcucci, Ralf Bundschuh, Pearlly Yan and Shili Lin.
}
\references{
Ayyala, D. N., et al. (2015) Statistical methods for detecting differentially methylated regions based on MethylCap-seq data, Manuscript.
}
\keyword{ package }
