#' scale_fill_geopalette
#'
#' geopalette scale fill for ggplot2
#'
#' @param location location for image to be centered on
#' @param zoom zoom level
#' @param discrete duscrete values? TRUE or FALSE
#'
#' @return ggplot2 scale
#' @export
#'
#' @examples
#' # Coloring each bar by car type
#' p1 = mtcars %>%
#' as.data.frame() %>%
#'  tibble::rownames_to_column("car") %>%
#'   ggplot2::ggplot(ggplot2::aes(car,mpg,fill = car))+
#'   ggplot2::geom_col()+
#'   scale_fill_geopalette("SanDiego,CA",zoom = "city")+
#'   ggplot2::theme(axis.text.x = element_blank())
#' p1

scale_fill_geopalette <- function(location, zoom = "city", discrete = TRUE) {

  pal  = google_image_request_url(location,zoom) %>%
    read_image_url() %>%
    determine_unique_colors() %>%
    sort_colors() %>%
    create_palette()

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("geopallete"), palette = pal)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(50))
  }
}
