% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/financials.R
\name{getFinancialsData}
\alias{getFinancialsData}
\title{Return Financials data by symbol or country from Trading Economics API}
\usage{
getFinancialsData(country = NULL, symbol = NULL, outType = NULL)
}
\arguments{
\item{country}{string or list.
String to get data for one country List of strings to get data for more than one country.}

\item{symbol}{string or list.
String to get data for one symbol. List of strings to get data for more than one symbol.}

\item{outType}{string.
'df' for data frame,
'lst'(default) for list.}
}
\value{
Return a list or data frame of Financials data by symbol or country.
}
\description{
Return Financials data by symbol or country from Trading Economics API
}
\section{Notes}{

Without credentials only sample data will be provided.
}

\examples{
\dontrun{ getFinancialsData(symbol = c('aapl:us','acm:us'), outType = 'df')
getFinancialsData(country = c('united states', 'china'), outType = 'df')
}

}
\seealso{
\code{\link{getMarketsData}}, \code{\link{getForecastData}}, \code{\link{getCalendarData}} and \code{\link{getIndicatorData}}
}
