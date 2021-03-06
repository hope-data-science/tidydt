% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/select_dt.R
\name{select_dt}
\alias{select_dt}
\title{Select column from data.frame}
\usage{
select_dt(data, ..., cols = NULL)
}
\arguments{
\item{data}{data.frame}

\item{...}{List of variables or name-value pairs of summary/modifications
functions.}

\item{cols}{(Optional)A numeric or character vector.}
}
\value{
data.table
}
\description{
Analogous function for \code{select} in \pkg{dplyr}.
}
\examples{
iris \%>\% select_dt(Species)
iris \%>\% select_dt(Sepal.Length,Sepal.Width)
iris \%>\% select_dt(c("Sepal.Length","Sepal.Width"))
iris \%>\% select_dt(1:3)
iris \%>\% select_dt(1,3)
iris \%>\% select_dt("Pe")
iris \%>\% select_dt("Pe|Sp")
iris \%>\% select_dt(cols = 2:3)
iris \%>\% select_dt(cols = names(iris)[2:3])
}
\seealso{
\code{\link[dplyr]{select}}
}
