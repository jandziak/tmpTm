#' Function to create
#'
#' @param source the source of
#'
#' @export

NewRawData <-function(source){
  UseMethod("NewRawData")
}

#' @export
NewRawData.default <- function(x = NULL){
  if(is.null(x))
    stop('argument "x" is missing')
}
