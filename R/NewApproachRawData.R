#' Function to create
#'
#' @param source the source of
#'
#' @export
NewRawData <-function(source){
  UseMethod("NewRawData")
}

#' @export
NewRawData.default <- function(source=NULL){
  if(is.null(source))
    message('Error: argument "source" is missing')
}
