#' plot_unique_colors
#'
#' simple function to plot colors
#'
#' @param colors  list of colors to plot
#'
#' @return ggplot2 object
#' @export
#'
#' @examples
#'
#' #Plotting 8  colors from culpeper palette.
#' culpeper = google_image_request_url("Culpeper,VA","city") %>%
#' read_image_url() %>%
#' determine_unique_colors() %>%
#' sort_colors()
#'
#' culpeper_pal = create_palette(culpeper)
#'
#' plot_unique_colors(culpeper_pal(8))
#'
plot_unique_colors = function(unique_colors){

  len=length(unique_colors)

  df = data.frame(x=1:len,y=1,unique_colors = unique_colors)

  output = df %>%
    ggplot2::ggplot(ggplot2::aes(x , y , fill = I(unique_colors)))+
    ggplot2::geom_col(width = 1) +
    ggplot2::theme_void()

  return(output)

}
