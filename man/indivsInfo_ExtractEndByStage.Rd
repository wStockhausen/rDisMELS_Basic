% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/indivsInfo_ExtractEndByStage.R
\name{indivsInfo_ExtractEndByStage}
\alias{indivsInfo_ExtractEndByStage}
\title{Extract info by individual at end of each life stage}
\usage{
indivsInfo_ExtractEndByStage(sfs_indivs)
}
\arguments{
\item{sfs_indivs}{- list of \pkg{sf} dataframes returned by \code{\link{indivsInfo_ReorderResults}}}
}
\value{
\pkg{sf} dataframe with columns:
\itemize{
 \item{startTime}
 \item{origID - original (starting) individual ID}
 \item{endTime - ending time}
 \item{endID - ending individual ID}
 \item{endLHS - ending life stage}
 \item{endGridCell - ID of ending ROMS grid cell}
 \item{endLon - ending longitude}
 \item{endLat - ending latitude}
 \item{endDepth - ending depth (m)}
 \item{endBathym - bathymetric depth (m) at ending location}
 \item{endAge - ending age(d)}
 \item{endNum - ending number}
 \item{successful - flag indicating "success" (TRUE) or failure (FALSE) (e.g., settlement)}
 \item{endGeom - ending 2d location as SF_POINT}
}
}
\description{
Function to extract info by individual at end of each life stage.
}
\details{
The input list of \pkg{sf} dataframes should be the one returned
by \code{\link{indivsInfo_ReorderResults}} for the "connectivity results" files.
For each individual, the end of the life stage is identified by the record
with \code{active==FALSE}, indicating transition to next life stage or death.
}
