% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample.R
\name{sample_n_dt}
\alias{sample_n_dt}
\alias{sample_frac_dt}
\title{Sample n rows from a table}
\usage{
sample_n_dt(data, size, replace = FALSE)

sample_frac_dt(data, size, replace = FALSE)
}
\arguments{
\item{data}{data.frame}

\item{size}{\code{sample_n_dt()}, the number of rows to select.
For \code{sample_frac_dt}, the fraction of rows to select.}

\item{replace}{Sample with or without replacement? Default uses \code{FALSE}.}
}
\value{
data.table
}
\description{
Analogous function for \code{sample_n} and \code{sample_frac} in \pkg{dplyr}.
}
\examples{
sample_n_dt(mtcars, 10)
sample_n_dt(mtcars, 50, replace = TRUE)
sample_frac_dt(mtcars, 0.1)
sample_frac_dt(mtcars, 1.5, replace = TRUE)


}
\seealso{
\code{\link[dplyr]{sample_n}},\code{\link[dplyr]{sample_frac}}
}
