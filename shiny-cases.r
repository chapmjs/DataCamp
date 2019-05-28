# shiny-cases courses - https://campus.datacamp.com/courses/building-web-applications-in-r-with-shiny-case-studies/shiny-review?ex=1
# started 2019 05 28

library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      h1("This is the sidebar")
    ),
    mainPanel(
      strong("Main panel goes here"),
      textInput("num","Enter a number:")
    )
  )
)

server <- function(input, output) {
  observe({
    print(input$num)
  })
}

shinyApp(ui = ui, server = server)

