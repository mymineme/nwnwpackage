#' Today's date with two types
#' @description Print today's date with two types
#' @param type This is the type of today's date you want to print.
#' And there are two types:
#' long - date with day of the week and month/day/year Eg.Thursday December 17 2020
#' short - simple date with month/day/year Eg.12/17/20
#' @return
#' @export
#'
#' @examples
#' Todays_Date("short")
Todays_Date <- function(type="") {
  switch(type,
         long =  format(Sys.time(), "%A %B %d %Y"),
         short = format(Sys.time(), "%m-%d-%y"),
         cat(type, "is not a recognized type\n"))
}
