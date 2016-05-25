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
  return(str)
}
