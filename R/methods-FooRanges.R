#' Helper function used as the method definition
#'
#' @noRd
#'
#' @keywords internal
.foobarFooRanges <- function(x) {
    message("sum of starts: ", sum(start(x)))
    message("barbar: ", barbar(x))
}

#' foobar generic and methods
#'
#' A function that does foobar to FooRanges
#'
#' @param x FooRanges object
#' @param ... additional arguments
#'
#' @return a summary
#'
#' @examples
#'
#' library(GenomicRanges)
#' x <- GRanges("1", IRanges(1,10))
#' y <- FooRanges(x, barbar="hi")
#' foobar(y)
#'
#' @rdname foobar
#' @export
setMethod("foobar", signature(x="FooRanges"), .foobarFooRanges)

#' Accessor and replacement methods for barbar in FooRanges
#'
#' Functions that get or set the barbar slot from FooRanges
#'
#' @param x FooRanges object
#' @param value replacement for barbar
#' @param ... additional arguments
#'
#' @examples
#'
#' library(GenomicRanges)
#' x <- GRanges("1", IRanges(1,10))
#' y <- FooRanges(x, barbar="hi")
#' barbar(y)
#' barbar(y) <- "hey"
#' barbar(y)
#'
#' @return The character value in the `barbar` slot
#'
#' @rdname barbar
#' @export
setMethod("barbar", signature(x="FooRanges"), function(x) {
    x@barbar
})

#' @rdname barbar
#' @importFrom BiocBaseUtils setSlots
#' @export
setReplaceMethod("barbar", signature(x="FooRanges", value="character"),
    function(x, value) {
        BiocBaseUtils::setSlots(x, barbar = value, check = FALSE)
    }
)
