#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Rice Scatter Plot"),
  
  # Some Directions and Information
  helpText("Select variables to compare.",
           "This application will create a scatter plot with options for X and Y axes and color."),
  
  # Sidebar with a radio box to input which traits will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("Variable1", 
                   "Choose a variable to display on the X axis:",
                   c("Alu.Tol",
                     "Flag.leaf.length",
                     "Flag.leaf.width",
                     "Panicle.number.per.plant",
                     "Plant.height",
                     "Panicle.length",
                     "Primary.panicle.branch.number",
                     "Seed.number.per.panicle",
                     "Florets.per.panicle",
                     "Panicle.fertility",
                     "Seed.length",
                     "Seed.width",
                     "Seed.volume",
                     "Seed.surface.area",
                     "Amylose.content",
                     "Protein.content")),
      radioButtons("Variable2", 
                   "Choose a variable to display on the Y axis:",
                   c("Alu.Tol",
                     "Flag.leaf.length",
                     "Flag.leaf.width",
                     "Panicle.number.per.plant",
                     "Plant.height",
                     "Panicle.length",
                     "Primary.panicle.branch.number",
                     "Seed.number.per.panicle",
                     "Florets.per.panicle",
                     "Panicle.fertility",
                     "Seed.length",
                     "Seed.width",
                     "Seed.volume",
                     "Seed.surface.area",
                     "Amylose.content",
                     "Protein.content")),
      radioButtons("Color", 
                   "Choose a trait to display by color:",
                   c("Seed.color",
                     "Pericarp.color",
                     "Region",
                     "popID"))
    ),
    
    
    
    #Show a plot of the generated distribution
    mainPanel(plotOutput("distPlot")
    )
  )
))