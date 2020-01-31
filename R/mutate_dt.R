
#' @title Mutate columns in data.frame
#' @description Analogous function for \code{mutate} in \pkg{dplyr}.
#' @param data data.frame
#' @param ... List of variables or name-value pairs of summary/modifications
#'   functions.
#' @return data.table
#' @seealso \code{\link[dplyr]{mutate}}
#' @examples
#'
#' iris %>% mutate_dt(one = 1,Sepal.Length = Sepal.Length + 1)

#' @export

mutate_dt = function(data,...){
  dt = as_dt(data)
  substitute(list(...)) %>%
    deparse() %>%
    str_extract("\\(.+\\)") -> dot_string
  eval(parse(text = str_glue("dt[,`:=`{dot_string},][]")))
}




