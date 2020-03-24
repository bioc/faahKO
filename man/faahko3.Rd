\name{faahko3}
\alias{faahko3}
\alias{faahKO3}
\docType{data}
\title{FAAH knockout LC/MS data XCMSnExp}
\description{
  \code{XCMSnExp} object containing quantitated LC/MS peaks from the
  spinal cords of 6 wild-type and 6 FAAH knockout mice. The data is a
  subset of the original data from 200-600 m/z and 2500-4500 seconds.
  It was collected in positive ionization mode.
}

\usage{data(faahko3)}
\format{
  The format is: \preformatted{
MSn experiment data ("XCMSnExp")
Object size in memory: 4.59 Mb
- - - Spectra data - - -
 MS level(s): 1 
 Number of spectra: 15336 
 MSn retention times: 41:32 - 75:14 minutes
- - - Processing information - - -
Data loaded [Tue Mar 24 13:28:38 2020] 
 MSnbase version: 2.13.2 
- - - Meta data  - - -
phenoData
  rowNames: 1 2 ... 12 (12 total)
  varLabels: sample_name sample_group
  varMetadata: labelDescription
Loaded from:
  [1] ko15.CDF...  [12] wt22.CDF
  Use 'fileNames(.)' to see all files.
protocolData: none
featureData
  featureNames: F01.S0001 F01.S0002 ... F12.S1278 (15336 total)
  fvarLabels: fileIdx spIdx ... spectrum (33 total)
  fvarMetadata: labelDescription
experimentData: use 'experimentData(object)'
- - - xcms preprocessing - - -
Chromatographic peak detection:
 method: centWave 
 5627 peaks identified in 12 samples.
 On average 469 chromatographic peaks per sample.
Alignment/retention time adjustment:
 method: peak groups 
Correspondence:
 method: chromatographic peak density 
 206 features identified.
 Median mz range of features: 0.10001
 Median rt range of features: 28.965
 325 filled peaks (on average 27.08333 per sample).
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
  \code{\link[MSnbase]{OnDiskMSnExp}},
  \code{\link[xcms]{XCMSnExp}}
}
\examples{
## The directory with the NetCDF LC/MS files
cdfpath <- file.path(find.package("faahKO"), "cdf")
cdfpath
list.files(cdfpath, recursive = TRUE)

data(faahko3)

## XCMSnExp Summary
show(faahko3)

}
\keyword{datasets}
