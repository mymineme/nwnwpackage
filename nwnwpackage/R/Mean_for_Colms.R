#' Return Mean for Each Columns and Drop NAs
#' @description Calculating mean for each columns and drop NAs at the same time
#' @param x This is the structured dataframe with integers or floats
#' @param removeNAs This equals TRUE means dropping NAs value
#'
#' @return
#' @export
#'
#' @examples
#' Mean_for_Colms(x, removeNAs = devTRUE)
Mean_for_Colms <- function(x,removeNAs=TRUE){

  nc <- ncol(x)

  means <- numeric(nc)

  for (i in 1:nc){

    means[i] <- mean(x[,i])
    means[i] <- mean(x[,i],na.rm = removeNAs)

  }

  means

}
