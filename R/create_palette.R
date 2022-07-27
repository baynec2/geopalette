#' create_palette
#'This function will create a palette given a list of unique colors.
#'
#' @param unique_colors this is a list of unique colors. Intended to be the output of determine_unique_colors()
#'
#' @return color palette
#' @export
#'
#' @examples
#' #Creating a color palette from Culpeper, VA
#'
#' culpeper = google_image_request_url("Culpeper,VA","city") %>%
#'  read_image_url() %>%
#'   determine_unique_colors() %>%
#'    sort_colors()
#'
#' culpeper_pal = create_palette(culpeper)

create_palette = function(unique_colors){
  set.seed(2)
  output = grDevices::colorRampPalette(unique_colors)
  return(output)
  }
