\name{diffMethylData}
\alias{diffMethylData}
\docType{data}
\title{
Randomly generated nucleotide-resolution methylation signal data 
}
\description{
Nucleotide resolution methylation-signal data for two groups of samples. The signals are randomly generated and to mimic acute myeloid cancer data set studied by Frankhouser et al. (2014). Signals are reported for two regions - region1 with 92 \emph{CpG} sites and region2 with 122 \emph{CpG} sites. While region1 is known to be non-differentially methylated, region2 is differentially methylated. Sample sizes for the two groups are 20 and 10 respectively. 
}
\usage{data(diffMethylData)}

\format{
  A data frame with signal matrices for two groups recorded on two regions.
  \describe{
    \item{\code{region1.x}}{a \eqn{20 \times 92} matrix}
    \item{\code{region1.y}}{a \eqn{10 \times 92} matrix}
    \item{\code{region1.x}}{a \eqn{20 \times 122} matrix }
    \item{\code{region1.y}}{a \eqn{10 \times 122} matrix}    
  }
}
\references{
Frankhouser, D. E., et al. (2014) PrEMeR-CG: inferring nucleotide leve DNA methylation values from MethylCap-seq data, Bioinformatics, 30 (24), 3567 -- 3574.

Ayyala, D. N., et al. (2015) Statistical methods for detecting differentially methylated regions based on MethylCap-Seq data, Manuscript.
}
\keyword{datasets}
