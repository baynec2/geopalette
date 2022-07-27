#' scale_color_geopalette
#'
#' @param palette
#' @param discrete
#'
#' @return
#' @export
#'
#' @examples
scale_color_geopalette = function(location,zoom = "city",discrete = TRUE, reverse = FALSE, ...) {

 pal  = google_image_request_url(location,zoom) %>%
   read_image_url() %>%
   determine_unique_colors() %>%
   sort_colors() %>%
   create_palette()


  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("geopallete"), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

