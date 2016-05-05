#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

llibrary(shiny)
library(ggplot2)

# Define server logic required to draw a boxplot
RiceData<-read.csv("/home/bis180l_local/MEGA/Assignment_4_Anderson.Jordan/RiceSNPData/RiceDiversity.44K.MSU6.Phenotypes.csv",header=T)
shinyServer(function(input, output) {
  
  # Expression that generates a boxplot. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$boxPlot <- renderPlot({
    
    # set up the plot
    pl <- ggplot(data = iris,
                 #Use aes_string below so that input$trait is interpreted
                 #correctly.  The other variables need to be quoted
                 aes_string(x="Species",
                            y=input$trait,
                            fill="Species"
                 )
    )
    
    # draw the boxplot for the specified trait
    pl + geom_boxplot()
  })
})

