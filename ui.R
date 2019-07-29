


library(shiny)
shinyUI(fluidPage(
titlePanel("Predicted mpg from hp"),
sidebarLayout(
    sidebarPanel(
        sliderInput("sliderHP","What is the Horse Power of the Car?",50,335,value=150),
        checkboxInput("model","Show/Hide model",value=TRUE),
        submitButton("Submit")
        
),
mainPanel(
    plotOutput('plot'),
    h3('Predicted mpg from model'),
    textOutput('pred')
)
)
))