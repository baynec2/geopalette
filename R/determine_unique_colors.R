#' determine_unique_colors
#'
#' Determining unique colors from a png image in R.
#'
#' @param image this is the image. is intended to be the output of read_image_url()
#'
#' @return list of unique colors
#' @export
#'
#' @examples
#'
#' # determining the unique colors from Culpeper,VA image.
#' culpeper = google_image_request_url("Culpeper,VA","city") %>%
# read_image_url() %>%
# determine_unique_colors()

determine_unique_colors = function(){
red = image[,,1] %>% as.vector()
green = image[,,2] %>% as.vector()
blue = image[,,3] %>% as.vector()

color = purrr::pmap(.l = list(red,green,blue),rgb_to_hex) %>% unlist()

unique_color = unique(color)

return(unique_color)

}
