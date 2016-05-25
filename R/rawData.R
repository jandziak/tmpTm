#' Create a string of raw data.
#'
#' @param str simple string
#' @return nie wiem co
#' @export

RawData <- function(str) {
  UseMethod("RawData")
}

#' @export
RawData.default <- function(str = NULL) {
  str <- structure(list(str), class = 'RawData')
  return(str)
}


length.RawData <- function(x, ...){
  ifelse(is.null(x[[1]]), 0, length(x))
}

