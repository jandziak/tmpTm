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
  str <- list(str)
  class(str) <- 'RawData'
  return(str)
}

length.RawData <- function(x, ...){
  if(is.null(x[[1]]))
    0
  else
    length(x)
}
