#' determine_unique_colors
#'
#' @param image
#'
#' @return
#' @export
#'
#' @examples
determine_unique_colors = function(image){

red = image[,,1] %>% as.vector()
green = image[,,2] %>% as.vector()
blue = image[,,3] %>% as.vector()

color = purrr::pmap(.l = list(red,green,blue),rgb_to_hex) %>% unlist()

unique_color = unique(color)

return(unique_color)

}
