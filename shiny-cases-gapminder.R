# shiny-cases, gapminder, chapter 2
# started 20190528

library(gapminder)
library(shiny)

# min(gapminder$pop)
# max(gapminder$pop)
# 
# subset(gapminder, country == "Canada" & year < 1965)
# 
# subset(gapminder, country == "Canada" & year == 1962)$lifeExp

ui <- fluidPage(
  h1("Gapminder"),
  sliderInput(inputId = "life", label = "Life expectancy",
              min = 0, max = 120,
              value = c(30, 50)),
  # Add an "All" value to the continent list
  selectInput("continent", "Continent",
              choices = c("All", levels(gapminder$continent))),
  tableOutput("table")
)

server <- function(input, output) {
  output$table <- renderTable({
    data <- gapminder
    data <- subset(
      data,
      lifeExp >= input$life[1] & lifeExp <= input$life[2]
    )
    # Don't subset the data if "All" continent are chosen
    if (input$continent != "All") {
      data <- subset(
        data,
        continent == input$continent
      )
    }
    data
  })
}

shinyApp(ui, server)