#' @rdname fooRanges
#' @export
setClass("fooRanges",
         contains = "GRanges",
         representation = representation( 
           barbar = "character"))

#' fooRanges
#'
#' The fooRanges object and constructor
#'
#' @param x a GRanges object
#' @param barbar character string
#'
#' @return a fooRanges object
#' 
#' @rdname fooRanges
#' @import GenomicRanges IRanges
#' @importFrom methods new
#' @export
fooRanges <- function(x, barbar) {
  x <- new("fooRanges", x, barbar=barbar)
  return(x)
}
