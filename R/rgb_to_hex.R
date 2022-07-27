#' rgb_to_hex
#' changing rgb to hex
#' @param red red color channel
#' @param green green color channel
#' @param blue blue color channel
#'
#' @return colors in hex format
#' @export
#'
#' @examples
#' #Rgb values for blue -> #0000FF
#' rbb_to_hex(0,0,255)
rgb_to_hex= function(red,green,blue){
  hex = rgb(red,green,blue)
  return(hex)
}
