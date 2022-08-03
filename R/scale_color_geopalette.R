#' scale_color_geopalette
#' geopalette scale color for ggplot2
#'
#' @param location location for image to be centered on
#' @param zoom zoom level
#' @param discrete duscrete values? TRUE or FALSE
#'
#' @return ggplot2 scale
#' @export
#'
#' @examples
#' #Coloring mpg using continuous coloring based on Culpeper,VA.
#' p1 = mtcars %>%
#' as.data.frame() %>%
#' tibble::rownames_to_column("car") %>%
#'  ggplot2::ggplot(ggplot2::aes(hp,mpg,color = mpg))+
#'  gggplot2::eom_point()+
#'  scale_color_geopalette("Culpeper,VA",zoom = "city",discrete = FALSE)
#' p1
scale_color_geopalette = function(location,zoom = "city",discrete = TRUE) {

 pal  = google_image_request_url(location,zoom) %>%
   read_image_url() %>%
   determine_unique_colors() %>%
   sort_colors() %>%
   create_palette()


  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("geopallete"), palette = pal)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(50))
  }
}

