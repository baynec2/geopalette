#' show_image
#'
#'plotting png image.
#' @param image png image read into R. intended to be the output of read_image_url()
#'
#' @return this returns a plotted image
#' @export
#'
#' @examples
#' # This will show the image used for
#' google_image_request_url("Culpeper,VA","city") %>%
#' read_image_url() %>%
#' show_image()

show_image = function(image){
return(grid::grid.raster(image))
}

