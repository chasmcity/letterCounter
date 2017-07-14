#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Letter Counter"),
  
  sidebarPanel(
    textInput(inputId="text", label = "Input Text"),
    submitButton("submit")
  ),
  
  mainPanel(
    
    tabsetPanel(
      tabPanel("Plot", plotOutput("plot")),
      tabPanel("Documentation",
               h4("Type anything. Get a barplot of letter frequency."))
    ),
    
    tags$style(type="text/css",
               ".shiny-output-error { visibility: hidden; }",
               ".shiny-output-error:before { visibility: hidden; }"
    )
  )
))
