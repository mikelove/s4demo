#' @rdname FooRanges
#' @export
.FooRanges <- setClass(
    "FooRanges",
    contains = "GRanges",
    slots = c(barbar = "character")
)

#' FooRanges
#'
#' The FooRanges object and constructor
#'
#' @param x a GRanges object
#' @param barbar character string
#'
#' @return a FooRanges object
#'
#' @rdname FooRanges
#' @import GenomicRanges IRanges
#' @importFrom methods new
#' @export
FooRanges <- function(x, barbar) {
    .FooRanges(x, barbar=barbar)
}
