% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runPedFac.R
\name{runPedFac}
\alias{runPedFac}
\title{Initialize pedigree run}
\usage{
runPedFac(geno.path, marker.path = "", output.path = "",
  random.seed = 26, n.iter = 1, cyclic.choice = 0,
  observe.frac = 0.8, max.unobs = 1, max.gen = 0, min.age = 1,
  max.age = 1, haplo.method = 0, geno.err = 0.02)
}
\arguments{
\item{geno.path}{string. Path to the input genotype file (see checkGeno help for formatting). Required.}

\item{marker.path}{string. Directed path to the option marker info file.}

\item{output.path}{string. Path to store intermed and final output files. By default, outputPath will be set in an upper folder of the current user's working directory.

Regarding sampling:}

\item{random.seed}{postive integer. Random seed to pass on pedigree sampler. Default:26.}

\item{n.iter}{positive integer. Number of sampling iteration. Default: 1.}

\item{cyclic.choice}{integer from 0 to 2. Choices of handling loops or cyclic path in pedigree. Default: 0. 0 - not allowing loops; 1 - throttle method; 2 - decimation method}

\item{observe.frac}{float value from 0 to 1. Assumed sampling fraction. Default: 0.8; use -1 for unknown.}

\item{max.unobs}{nonnegative integer. Maximum number of unobserved individuals allowed in between any two individuals. Default: 1.}

\item{max.gen}{nonnegative integer. Number of predecessor generation(s) considered beyond the earliest observed generation. Default: 0. Setting it as 0 means that individuals of the earliest observed generation are treated as founders.

Regarding specie life history:}

\item{min.age}{positive float value. Minimal age of sexual maturation or fecundity (in year). Default: 1.}

\item{max.age}{positive float value. Maximum age of sexual maturation or fecundity (in year). Default: 1.

Regarding genotype marker:}

\item{haplo.method}{positive integer 0 - 2. Selected method in the case of handling multiallelic markers. Default: 0. 0 - taking the most informative allele whose frequency is closest to 0.5; 1 - (not avail) deconstructing haplotype into a set of nucleotide units; 2 - (not avail) reduce the multiallelic basis into n class of binomial switches}

\item{geno.err}{float value from 0 to 1. Assumed background genotype error rate in the form of epsilon. Default: 0.02. If the genotype error row - 'gerror' of marker_info.txt is provided, this param will be overridden.}
}
\description{
The function \code{runPedFac} prepares and runs a multigeneration pedigree sampler given input genetic data
}
\examples{
# runHaplot(run.label, sam.path, label.path, vcf.path)
runPedFac(geno.path="/Users/thomasn/repo/pedfac/example/case_0/genotype.txt")
}
