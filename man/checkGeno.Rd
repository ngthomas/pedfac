% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/renderGeno.R
\name{checkGeno}
\alias{checkGeno}
\title{check to see whether all the entries of the input genotype file are sound}
\usage{
checkGeno(geno.path)
}
\arguments{
\item{geno.path}{string. Path to the input genotype file. Required.

About the genotype file:
The genotype file is a space separate file that contains individual's genotype and meta information.
Each row is an individual entry with its associate genotype information, in the order as follows:
unique indiv ID | is the indiv observed? | sex of individual | birth year | genotype(s) information.

geno.path = "/Users/thomasn/repo/pedfac/example/case_0/genotype.txt"}
}
\description{
The function \code{checkGeno} examines whether the input genotype file is accepteable
}
