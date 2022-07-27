#' scale_fill_geopalette
#'
#' @param location
#' @param zoom
#' @param discrete
#' @param reverse
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
scale_fill_geopalette <- function(location, zoom = "city", discrete = TRUE, reverse = FALSE, ...) {

  pal  = google_image_request_url(location,zoom) %>%
    read_image_url() %>%
    determine_unique_colors() %>%
    sort_colors() %>%
    create_palette()

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("geopallete"), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
