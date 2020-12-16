
#' Plot histogram
#' @description Help you plot a histogram directly
#' @param x the coordinates of points in the plot. Alternatively, a single plotting structure, function or any R object with a plot method can be provided
#' @param y the y coordinates of points in the plot, optional if x is an appropriate structure.
#' @param type input "1" means plot histogram (only accept 1)
#'
#' @return
#' @export
#'
#' @examples
#' plot_hist(x, y, type = "1")
plot_hist <- function(x, y, type = "1" ){
  plot(x, y, type = "h")
}

