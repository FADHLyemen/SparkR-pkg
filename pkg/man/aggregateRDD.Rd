% Generated by roxygen2 (4.0.2): do not edit by hand
\docType{methods}
\name{aggregateRDD}
\alias{aggregateRDD}
\alias{aggregateRDD,RDD,RDD-method}
\alias{aggregateRDD,RDD-method}
\title{Aggregate an RDD using the given combine functions and a neutral "zero value".}
\usage{
aggregateRDD(rdd, zeroValue, seqOp, combOp)

\S4method{aggregateRDD}{RDD}(rdd, zeroValue, seqOp, combOp)
}
\arguments{
\item{rdd}{An RDD.}

\item{zeroValue}{A neutral "zero value".}

\item{seqOp}{A function to aggregate the RDD elements. It may return a different
result type from the type of the RDD elements.}

\item{combOp}{A function to aggregate results of seqOp.}
}
\value{
The aggregation result.
}
\description{
Aggregate the elements of each partition, and then the results for all the
partitions, using given combine functions and a neutral "zero value".
}
\examples{
\dontrun{
sc <- sparkR.init()
rdd <- parallelize(sc, list(1, 2, 3, 4))
zeroValue <- list(0, 0)
seqOp <- function(x, y) { list(x[[1]] + y, x[[2]] + 1) }
combOp <- function(x, y) { list(x[[1]] + y[[1]], x[[2]] + y[[2]]) }
aggregateRDD(rdd, zeroValue, seqOp, combOp) # list(10, 4)
}
}
\seealso{
reduce
}

