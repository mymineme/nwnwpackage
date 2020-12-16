#' Define a Log_likelihood Function
#' @description Define a log_likelihood Function with a matrix
#' @param params This is a matrix with five params:p, mu1, sigma1, mu2, sigma2.
#' @param data This a observation data
#'
#' @return
#' @export
#'
#' @examples
#' Log_likelihood(params, data)
Log_likelihood <- function(params, data) {
  t1 <- dnorm(data, params[2], params[3])
  t2 <- dnorm(data, params[4], params[5])
  f <- params[1] * t1 + (1 - params[1]) * t2
  ll <- sum(log(f))
  return(-ll)
}


