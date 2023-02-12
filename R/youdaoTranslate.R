#' youdaoTranslate
#'
#' `youdaoTranslate` is a free but limited tool to access Youdao Translator for word-level translation from Chinese to English
#'
#' @param text Text to be translated
#' @import dplyr
#' @import httr
#' @import rvest
#'
#'
#' @examples
#'
#' #  library(youdaoTranslate)
#'
#' #  youdaoTranslate(text = "民主")
#'
#'
#' @export

youdaoTranslate <- function(text) {
  url <- paste0("http://dict.youdao.com/search?q=", text, "&keyfrom=dict.index")
  webpage <- read_html(url)
  result <- html_nodes(webpage, ".wt-container:nth-child(1) .title span") %>% html_text()
  result <- gsub("\n                ", "", result)
  result
}
