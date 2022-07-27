#' sort_colors
#' This function sorts colors using the "arbitrary insertion" algorithm with two_opt refinement.
#' @param unique_colors this is a list of unique colors
#'
#' @return a sorted list of colors
#' @export
#'
#' @examples
#' # Here the colors are sorted.
#' Sandiego = google_image_request_url("SanDiego,CA","city") %>%
#'read_image_url() %>%
#' determine_unique_colors() %>%
#'sort_colors()

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



