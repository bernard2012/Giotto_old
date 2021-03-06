% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dimension_reduction.R
\name{create_genes_to_use_matrix}
\alias{create_genes_to_use_matrix}
\title{create_genes_to_use_matrix}
\usage{
create_genes_to_use_matrix(gobject, sel_matrix, genes_to_use, verbose = TRUE)
}
\arguments{
\item{gobject}{giotto object}

\item{sel_matrix}{selected expression matrix}

\item{genes_to_use}{genes to use, character or vector of genes}

\item{verbose}{verbosity}
}
\value{
subsetted matrix based on selected genes
}
\description{
subsets matrix based on vector of genes or hvg column
}
\keyword{internal}
