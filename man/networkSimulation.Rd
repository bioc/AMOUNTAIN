% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AMOUNTAIN.R
\name{networkSimulation}
\alias{networkSimulation}
\title{Illustration of weighted network simulation}
\usage{
networkSimulation(n, k, theta)
}
\arguments{
\item{n}{number of nodes in the network}

\item{k}{number of nodes in the module, n < k}

\item{theta}{module node score follow the uniform distribution in range [theta,1]}
}
\value{
a list containing network adjacency matrix, node score and module membership
}
\description{
Simulate a single weighted network
}
\examples{
pp <- networkSimulation(100,20,0.5)
moduleid <- pp[[3]]
netid <- 1:100
restp<- netid[-moduleid]
groupdesign=list(moduleid,restp)
names(groupdesign)=c('module','background')
\dontrun{library(qgraph)
pg<-qgraph(pp[[1]],groups=groupdesign,legend=TRUE)}
}
\author{
Dong Li, \email{dxl466@cs.bham.ac.uk}
}
\keyword{simulation}

