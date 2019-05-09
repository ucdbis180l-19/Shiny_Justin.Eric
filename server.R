#
# This is the server logic of a Shiny web application. You can run the 
# appl(ggplot2)ication by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$plot <- renderPlot({
    
    pl <- ggplot(data=tomato,
                 aes_string(x=input$trait1,
                            y=input$trait2,
                            color="species"
                            )
                 )
    # draw the scatter plot
    pl + geom_point()
    
  })
  
})
