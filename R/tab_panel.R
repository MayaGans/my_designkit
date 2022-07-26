#' Tab Panel
#'
#' @param title name of tab
#' @param ... content of tab
#'
#' @return tab
#' @export
tab_wrapper <- function(...) {
   
   html <- shiny::tabsetPanel(...) %>%
      shiny::tagAppendAttributes(class = "maya-tabpanel")
   
   dep <- htmltools::htmlDependency(
      name = "tab-input",
      version = "0.1.0",
      src = system.file(package = "designkit"),
      script = "js/tab_panel.js",
      stylesheet = "css/tab_panel.css"
   )
   
   shiny::tagList(html, dep)
      
}