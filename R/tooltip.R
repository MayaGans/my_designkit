#' Tooltip
#'
#' @param element_id id for tooltip element wrapper
#' @param tooltip_text tooltip text
#' @param placement placement of tooltip
#' @param ... element inside wrapper
#'
#' @return element with a tooltip wrapper
#' @export
tooltip_element <- function(
   wrapper_id, 
   element,
   tooltip_text, 
   placement = 'top-start') {
   
   html <- shiny::tags$div(
      id = wrapper_id,
      class="tooltip-wrapper",
      element,
      tippy::tippy_this(
         wrapper_id,
         tooltip_text,
         delay = c(1000,0),
         theme = "maya",
         arrow = TRUE,
         placement = placement
      )
   )
   
   dep <- htmltools::htmlDependency(
      name = "tooltip",
      version = "0.1.0",
      src = system.file(package = "designkit"),
      script = "js/tooltip.js",
      stylesheet = "css/tooltip.css"
   )
   
   shiny::tagList(html, dep)
}