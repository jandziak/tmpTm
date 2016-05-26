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
  if(!is.null(str))
  str <- structure(list(content=as.list(str),
                        meta = list(author = as.list(sapply(1:length(str), function(x) character())))),
                   class='RawData')
  return(str)
}

#' @export
length.RawData <- function(x, ...){
  if(is.null(x$content[1]))
     0
  else
     length(x$content)
}

