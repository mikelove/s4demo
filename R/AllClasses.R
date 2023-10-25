#' FooRanges-class
#'
#' The FooRanges class documentation
#'
#' @examples
#'
#' library(GenomicRanges)
#' x <- GRanges("1", IRanges(1,10))
#' y <- FooRanges(x, barbar="hi")
#' class(y)
#' showClass(class(y))
#'
#' @return a `FooRanges` class object
#'
#' @importFrom methods new setClass
#' @exportClass FooRanges
.FooRanges <- setClass(
    "FooRanges",
    contains = "GRanges",
    slots = c(barbar = "character")
)

#' FooRanges
#'
#' The FooRanges constructor function
#'
#' @param x a GRanges object
#' @param barbar character string
#'
#' @return a FooRanges class object
#'
#' @import GenomicRanges IRanges
#' @importFrom methods is
#'
#' @seealso \code{\link{FooRanges-class}}
#'
#' @examples
#'
#' library(GenomicRanges)
#' x <- GRanges("1", IRanges(1,10))
#' FooRanges(x, barbar="hi")
#'
#' @export
FooRanges <- function(x, barbar) {
    # check inputs in construct
    if (!is(x, "GRanges"))
        stop("x must be a 'GRanges' object.")
    stopifnot(is.character(barbar), length(barbar) == 1L, !is.na(barbar))
    .FooRanges(x, barbar=barbar)
}
