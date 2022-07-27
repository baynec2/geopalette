#' rgb_to_hex
#'
#' @param red
#' @param green
#' @param blue
#'
#' @return
#' @export
#'
#' @examples
rgb_to_hex= function(red,green,blue){
  hex = rgb(red,green,blue)
  return(hex)
}
