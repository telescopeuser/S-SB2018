#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Old Faithful Geyser Data"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
         sliderInput("bins",
                     "Number of bins:",
                     min = 1,
                     max = 30,
                     value = 15)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("distPlot")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$distPlot <- renderPlot({
      # generate bins based on input$bins from ui.R
     setwd("C:/Users/ISSPNR/Desktop/SSB/SIA run nov 20/R")
     library(ggplot2)
     t = read.csv("titanic3.csv")
     #plot(t)
     ggplot(t, aes(age)) + geom_histogram(binwidth = input$bins)
     
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

