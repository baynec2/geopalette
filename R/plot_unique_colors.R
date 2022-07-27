#' plot_unique_colors
#'
#' @param colors
#'
#' @return
#' @export
#'
#' @examples
plot_unique_colors = function(unique_colors){

  len=length(unique_colors)

  df = data.frame(x=1:len,y=1,unique_colors = unique_colors)

  output = df %>%
    ggplot2::ggplot(ggplot2::aes(x , y , fill = I(unique_colors)))+
    ggplot2::geom_col(width = 1) +
    ggplot2::theme_void()

  return(output)

}
