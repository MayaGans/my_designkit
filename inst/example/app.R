library(shiny)
library(designkit)

ui <- fluidPage(
  h2("Buttons"),
  shiny::tags$button("TEXT"),
  actionButton("primary", "TEXT"),
  primary_btn("primary", "TEST"),
  primary_btn("primary_disabled", "TEST", disabled = TRUE),
  secondary_btn("secondary", "TEST"),
  secondary_btn("secondary_disabled", "TEST", disabled = TRUE),
  icon_btn("icon", "search"),
  icon_btn("icon_disabled", "search", disabled = TRUE),
  tooltip_element("tooltip", 
                  icon_btn("icon_tooltip", "search"),
                  "Lorem ipsum"),
  
  h2("Inputs"),
  text_input("input", "Label"),
  
  h2("Tab Panel")
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)