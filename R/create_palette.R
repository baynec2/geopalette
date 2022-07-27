#' create_palette
#'
#' @param unique_colors
#'
#' @return
#' @export
#'
#' @examples
create_palette = function(unique_colors){
  set.seed(2)
  output = colorRampPalette(unique_colors)
  return(output)
  }
