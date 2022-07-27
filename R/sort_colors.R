#' sort_colors
#'
#' @param unique_colors
#'
#' @return
#' @export
#'
#' @examples
sort_colors = function(unique_colors){
  rgb = col2rgb(unique_colors)

  tsp = TSP::as.TSP(dist(t(rgb)))
  sol = TSP::solve_TSP(tsp, control = list(repetitions = 1e3))
  ordered_cols=unique_colors[sol]
  # Alternatively could sort from light to dark
  # lab = convertColor(t(rgb), 'sRGB', 'Lab')
  # ordered_cols <- unique_colors[order(lab[, 'L'])]
  return(ordered_cols)
}



