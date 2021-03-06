% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mutate_dt.R
\name{mutate_dt}
\alias{mutate_dt}
\alias{transmute_dt}
\title{Mutate columns in data.frame}
\usage{
mutate_dt(data, ...)

transmute_dt(data, ...)
}
\arguments{
\item{data}{data.frame}

\item{...}{List of variables or name-value pairs of summary/modifications
functions.}
}
\value{
data.table
}
\description{
Analogous function for \code{mutate} and \code{transmute} in \pkg{dplyr}.
}
\examples{

iris \%>\% mutate_dt(one = 1,Sepal.Length = Sepal.Length + 1)
iris \%>\% transmute_dt(one = 1,Sepal.Length = Sepal.Length + 1)

}
\seealso{
\code{\link[dplyr]{mutate}}
}
