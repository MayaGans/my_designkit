#' Text Input
#'
#' @param ... 
#'
#' @return
#' @export
text_input <- function(..., disabled = FALSE) {
   
   textInput <- function(inputId, label, value = "", width = NULL,
                         placeholder = NULL) {
      
      value <- shiny::restoreInput(id = inputId, default = value)
      
      shiny::tags$div(class = "form-group shiny-input-container",
          shiny::tags$input(id = inputId, type="text", class="form-control", value=value,
                     placeholder = placeholder),
          shiny:::shinyInputLabel(inputId, label)
      )
   }
   
   html <- textInput(...) %>%
      shiny::tagAppendAttributes(class = "maya-input")
   
   if (disabled) {
      html <- html %>% shiny::tagAppendAttributes(class = "input-disabled")
   }
   
   dep <- htmltools::htmlDependency(
      name = "text-input",
      version = "0.1.0",
      src = system.file(package = "designkit"),
      script = "js/input.js",
      stylesheet = "css/input.css"
   )
   
   htmltools::tagList(html, dep)
}