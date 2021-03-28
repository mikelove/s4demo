foobar.fooRanges <- function(x) {
  message(paste("sum of starts:",sum(start(x))))
  message(paste("barbar:",barbar(x)))
}

#' Foobar fooRanges
#'
#' A function that does foobar to fooRanges
#'
#' @param x fooRanges object
#' @param ... additional arguments
#'
#' @return a summary
#'
#' @examples
#'
#' library(GenomicRanges)
#' x <- GRanges("1", IRanges(1,10))
#' y <- fooRanges(x, barbar="hi")
#' barbar(y)
#' foobar(y)
#' 
#' @rdname foobar
#' @export
setMethod("foobar", signature(x="fooRanges"), foobar.fooRanges)

barbar.fooRanges <- function(x) {
  x@barbar
}

#' Accessor for barbar of fooRanges
#'
#' A function that gets the barbar from fooRanges
#'
#' @param x fooRanges object
#' @param ... additional arguments
#'
#' @return the barbar
#'
#' @rdname barbar
#' @export
setMethod("barbar", signature(x="fooRanges"), barbar.fooRanges)
