#' Function to create
#'
#' @param x the source of
#' @param language default language of document
#' @return returns RawData list
#'
#' @export

NewRawData <-function(x, language){
  UseMethod("NewRawData")
}

#' @export
NewRawData.default <- function(x = NULL, language = "en"){
  if(is.null(x))
    stop('argument "x" is missing')
  rawData <- list(text = x, language = rep(language, length(x)))
  rawData
}

#' Function to access RawData texts
#'
#' @param x RawData object
#' @param i index
#' @return returns text
#'
#' @export
getDoc <- function(x,i){
  if(length(x$text) < i)
    stop('index "i" out of bands')
  x$text[i]
}

#' Function to access RawData metadata
#'
#' @param x RawData object
#' @param i index
#' @param meta metadata field name
#' @return returns metadata
#'
#' @export
getMeta <- function(x, i, meta){
  if(length(get(meta, x)) < i)
    stop('index "i" out of bands')
  get(meta, x)[i]
}
