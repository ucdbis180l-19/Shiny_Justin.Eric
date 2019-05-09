#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Tomato data tool"),
  
  helpText("some help text"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait1",
                   "Choose a trait to display:",
                   c("hyp",
                     "petleng",
                     "leafleng",
                     "leafwid",
                     "leafnum"),
       ),
       radioButtons("trait2",
                    "Choose a trait to display:",
                    c("hyp",
                      "petleng",
                      "leafwid",
                      "leafnum")
    )),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("plot")
    )
  )
))
