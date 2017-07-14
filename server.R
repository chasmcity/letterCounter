#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(
  
  function(input, output) {
    
    output$plot <- renderPlot({
      t <- input$text
      t <- gsub("[^[:alnum:]]", "", t)
      t <- gsub('[[:digit:]]+', "", t)
      t <- toupper(t)
      freq <- table(unlist(strsplit(t,""), use.names = FALSE))
      barplot(freq)
      
    })
  }
)