#' Calculate MAPE
#' @description This is a function help us calculate MAPE for time series in the last few rows after the RMSE and MAE Values
#' @param fit1 The time series under consideration
#' @param df_ts The time series under consideration
#' @param orig This is the starting forecast origin. It should be less than the length of the underlying time series
#' @param h The forecast horizon. For a given h, it computes 1-step to h-step ahead forecasts
#'
#' @return
#' @export
#'
#' @examples
#' Calculate_MAPE(fit1,df_ts,orig,h)
Calculate_MAPE <- function(fit1,df_ts,orig,h){

  a1=MTS::backtest(fit1,df_ts,orig,h)

  c1=abs(a1$error/(a1$forecasts+a1$error))

  c1=na.omit(c1)

  MAPE=colMeans(c1)

  MAPE
}
