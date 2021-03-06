% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BiclusR.R
\name{bicstr}
\alias{bicstr}
\title{Generating a bicluster sample in different structures}
\usage{
bicstr(
  struct,
  type,
  xdim,
  bicdim,
  M,
  Mc = rep(NA, length(type)),
  Me = rep(NA, length(type))
)
}
\arguments{
\item{struct}{a character string indicating the type of bicluster structure and must be one of "single", "mono.rc" and "chessboard" (character).}

\item{type}{a character vector indicating the type of each bicluster (vector).}

\item{xdim}{the dimension of the sample (vector).}

\item{bicdim}{a list contains two vector naming "row" and "col" which indicate the dimension of each bicluster (list).}

\item{M}{the amplified multiple of value for each bicluster (vector).}

\item{Mc}{the amplified multiple of difference for add model for each bicluster (vector).}

\item{Me}{the amplified multiple of error for each bicluster (vector).}
}
\value{
a bicluster sample in the specified structure.
}
\description{
Function for generating a bicluster sample in different structures.
}
\examples{
\dontrun{
library(pheatmap)
type <- rep("constant",3)
xdim <- c(200,600)
bicdim <- list(row=c(30,60,80),col=c(50,80,120))
x <- bicstr("mono.rc",type,xdim,bicdim,M=rep(5,3),rep(2,3))
pheatmap(x,show_colnames =F,show_rownames = F, cluster_rows = F, cluster_cols = F)
}
}
