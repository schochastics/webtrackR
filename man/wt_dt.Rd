% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wt_dt.R
\name{wt_dt}
\alias{wt_dt}
\alias{as.wt_dt}
\alias{is.wt_dt}
\title{An S3 class to store web tracking data}
\usage{
as.wt_dt(
  x,
  timestamp_format = "\%Y-\%m-\%d \%H:\%M:\%OS",
  tz = "UTC",
  varnames = c(panelist_id = "panelist_id", url = "url", timestamp = "timestamp")
)

is.wt_dt(x)
}
\arguments{
\item{x}{data.frame containing a necessary set of columns, namely
panelist's ID, visit URL and visit timestamp.}

\item{timestamp_format}{string. Specifies the raw timestamp's formatting.
Defaults to \code{"\%Y-\%m-\%d \%H:\%M:\%OS"}.}

\item{tz}{timezone of date. defaults to UTC}

\item{varnames}{Named vector of column names, which contain the panelist's ID
(\code{panelist_id}), the visit's URL (\code{url}) and the visit's timestamp (\code{timestamp}).}
}
\value{
a webtrack data object with at least columns \code{panelist_id}, \code{url}
and \code{timestamp}

logical. TRUE if x is a webtrack data object and FALSE otherwise
}
\description{
An S3 class to store web tracking data

Convert a data.frame containing web tracking data to a \code{wt_dt} object
}
\details{
A \code{wt_dt} table is a data.frame.
}
\examples{
data("testdt_tracking")
wt <- as.wt_dt(testdt_tracking)
is.wt_dt(wt)
}
