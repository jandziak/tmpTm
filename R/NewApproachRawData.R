#' Function to create
#'
#' @param source the source of
#'
#' @export

NewRawData <-function(source){
  UseMethod("NewRawData")
}

#' @export
NewRawData.default <- function(x = NULL, language = "en"){
  if(is.null(x))
    stop('argument "x" is missing')
  rawData <- list(text = x, language = rep(language, length(x)))
  rawData
}

#' @export
getDoc <- function(x,i){
  if(length(x$text) < i)
    stop('index "i" out of bands')
  x$text[i]
}

getMeta <- function(x, i, meta){
  get(meta, x)[i]
}
