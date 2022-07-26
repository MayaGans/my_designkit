#' Primary Button
#'
#' @param ... inherits parameters from actionButton
#'
#' @return primary action button
#' @export
primary_btn <- function(...) {

   html <- shiny::actionButton(...) %>%
      shiny::tagAppendAttributes(class = "maya-btn maya-primary-btn ripple") 

   dep <- htmltools::htmlDependency(
      name = "buttons",
      version = "0.1.0",
      src = system.file(package = "designkit"),
      script = "js/btn.js",
      stylesheet = "css/btn.css"
   )

   htmltools::tagList(html, dep)

}

#' Secondary Button
#'
#' @param ... inherits parameters from actionButton
#'
#' @return secondary action button
#' @export
secondary_btn <- function(...) {

   html <- shiny::actionButton(...) %>%
      shiny::tagAppendAttributes(class = "maya-btn maya-secondary-btn ripple")

   dep <- htmltools::htmlDependency(
      name = "buttons",
      version = "0.1.0",
      src = system.file(package = "designkit"),
      script = "js/btn.js",
      stylesheet = "css/btn.css"
   )

   htmltools::tagList(html, dep)
}

#' Icon Button
#'
#' @param id 
#' @param icon 
#' @param ... 
#'
#' @return
#' @export
icon_btn <- function(id, icon, ...) {
   html <- shiny::actionButton(inputId = id, label = shiny::icon(icon), ...) %>%
      shiny::tagAppendAttributes(class = "maya-btn maya-icon-btn")
   
   dep <- htmltools::htmlDependency(
      name = "buttons",
      version = "0.1.0",
      src = system.file(package = "designkit"),
      script = "js/btn.js",
      stylesheet = "css/btn.css"
   )
   
   htmltools::tagList(html, dep)
}
