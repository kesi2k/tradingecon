% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/markets.R
\name{getMarketsStockDescriptions}
\alias{getMarketsStockDescriptions}
\title{Returns Markets Descriptions}
\usage{
getMarketsStockDescriptions(symbol = NULL, country = NULL, outType = NULL)
}
\arguments{
\item{symbol}{string or list.}

\item{country}{string or list.}

\item{outType}{string.
'df' for data frame,
'raw'(default) for list of unparsed data.}
}
\value{
Returns a list or data frame of Markets descriptions by country or symbol.
}
\description{
Returns Markets Descriptions
}
\section{Notes}{

A country or a symbol must be provided.
}

\examples{
\dontrun{ getMarketsStockDescriptions(symbol='AAPL:US',outType='df')
getMarketsStockDescriptions(symbol=c('AAPL:US,FB:US'),outType='df')
getMarketsStockDescriptions(country='france',outType='df')
getMarketsStockDescriptions(country=c('france,portugal'),outType='df')
}
}
\seealso{
\code{\link{getCalendarData}}, \code{\link{getForecastData}}, \code{\link{getHistoricalData}} and \code{\link{getIndicatorData}}
}
