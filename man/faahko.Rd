\name{faahko}
\alias{faahko}
\alias{faahKO}
\docType{data}
\title{FAAH knockout LC/MS data xcmsSet}
\description{
  \code{xcmsSet} object containing quantitated LC/MS peaks from the
  spinal cords of 6 wild-type and 6 FAAH knockout mice. The data is a
  subset of the original data from 200-600 m/z and 2500-4500 seconds.
  It was collected in positive ionization mode.
}

\usage{data(faahko)}
\format{
  The format is: \preformatted{
Formal class 'xcmsSet' [package "xcms"] with 8 slots
  ..@ peaks    : num [1:4776, 1:11] 200 201 205 206 207 ...
  ..@ groups   : logi[0 , 0 ] 
  ..@ groupidx : list()
  ..@ sampnames: chr [1:12] "ko15" "ko16" "ko18" "ko19" ...
  ..@ sampclass: Factor w/ 2 levels "KO","WT": 1 1 1 1 1 1 2 2 2 2 ...
  ..@ rt       :List of 2
  .. ..$ raw      :List of 12
  .. ..$ corrected:List of 12
  ..@ filepaths : chr [1:12] ...
  ..@ profinfo :List of 2
  .. ..$ method: chr "bin"
  .. ..$ step  : num 0.1
}}
\details{
  The corresponding raw NetCDF files are located in the \code{cdf}
  subdirectory of this package.
}

\source{
  \url{http://dx.doi.org/10.1021/bi0480335}
}
\references{
  Saghatelian A, Trauger SA, Want EJ, Hawkins EG, Siuzdak G, Cravatt BF.
  Assignment of endogenous substrates to enzymes by global metabolite
  profiling. \emph{Biochemistry}. 2004 Nov 16;43(45):14332-9.
}

\seealso{
  \code{\link[xcms]{xcmsSet}},
  \code{\link[xcms]{xcmsRaw}}
}
\examples{
## The directory with the NetCDF LC/MS files
cdfpath <- file.path(.find.package("faahKO"), "cdf")
cdfpath
list.files(cdfpath, recursive = TRUE)

if (require(xcms)) {

## xcmsSet Summary
show(faahko)

## Access raw data file
ko15 <- xcmsRaw(filepaths(faahko)[1], profmethod = "bin", profstep = 0.1)
ko15

}
}
\keyword{datasets}
