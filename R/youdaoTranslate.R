#' @import dplyr
#' @import httr
#' @import rvest

YDTranslate <- function(text) {
  url <- paste0("http://dict.youdao.com/search?q=", text, "&keyfrom=dict.index")
  webpage <- read_html(url)
  result <- html_nodes(webpage, ".wt-container:nth-child(1) .title span") %>% html_text()
  result <- gsub("\n                ", "", result)
  print(result)
}
