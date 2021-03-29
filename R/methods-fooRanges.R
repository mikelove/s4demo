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
#' barbar(y) <- "hey"
#' foobar(y)
#' 
#' @rdname foobar
#' @export
setMethod("foobar", signature(x="fooRanges"), foobar.fooRanges)

#' Accessor and replacement methods for barbar of fooRanges
#'
#' Functions that get or set the barbar slot from fooRanges
#'
#' @param x fooRanges object
#' @param value replacement for barbar
#' @param ... additional arguments
#'
#' @rdname barbar
#' @export
setMethod("barbar", signature(x="fooRanges"),
          function(x) {
            x@barbar
          })

#' @rdname barbar
#' @export
setReplaceMethod("barbar", signature(x="fooRanges", value="character"),
                 function(x, value) {
                   x@barbar <- value
                   x
                 })
