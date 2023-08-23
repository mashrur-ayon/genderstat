library(shiny)
library(devtools)

ui <- fluidPage(
  titlePanel("GenderStat Package Explorer"),
  sidebarLayout(
    sidebarPanel(
      selectInput("function_name", "Choose a function:", ""),
      selectInput("data_name", "Choose a dataset:", ""),
      actionButton("execute", "Execute")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotOutput("plot_output")),
        tabPanel("Table", tableOutput("table_output")),
        tabPanel("Value", verbatimTextOutput("value_output"))
      )
    )
  )
)


server <- function(input, output) {

  # Install the package from GitHub
  install_github("mashrur-ayon/genderstat", subdir = "genderstat_0.1.3.tar.gz")
  library(genderstat)


  # Get all functions and data from the package
  functions_list <- grep("^genderstat::", ls("package:genderstat"), value = TRUE)
  data_list <- data(package = "genderstat")$results[, "Item"]

  # Update UI dropdowns
  updateSelectInput(session, "function_name", choices = functions_list)
  updateSelectInput(session, "data_name", choices = data_list)


  observeEvent(input$execute, {
    # Load the selected data
    data_to_use <- get(input$data_name, envir = asNamespace("genderstat"))

    # Execute the selected function
    result <- do.call(input$function_name, list(data_to_use))

    # Check type of result and render appropriately
    if (is.numeric(result) || is.character(result)) {
      output$value_output <- renderText({ result })
    } else if (is.data.frame(result)) {
      output$table_output <- renderTable({ result })
    } else {
      output$plot_output <- renderPlot({ plot(result) })
    }
  })

}



shinyApp(ui = ui, server = server)
