% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{methods}
\name{first,RDD-method}
\alias{first}
\alias{first,RDD}
\alias{first,RDD-method}
\title{First}
\usage{
\S4method{first}{RDD}(x)

first(x)
}
\value{
The first element of an RDD.
}
\description{
Return the first element of an RDD
}
\examples{
\dontrun{
sc <- sparkR.init()
rdd <- parallelize(sc, 1:10)
first(rdd)
}
}

