#' Create a string of raw data.
#'
#' @param str simple string
#' @return nie wiem co
#' @export

RawData <- function(str) {
  UseMethod("RawData")
}

#' @export
RawData.default <- function(str=NULL) {
  str <- structure(list(content=as.list(str)), class='RawData')
  return(str)
}

#' @export
length.RawData <- function(x, ...){
  if(is.null(x$content[1]))
     0
  else
     length(x$content)
}

