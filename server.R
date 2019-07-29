
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    model=lm(mpg~hp,data=mtcars)
    
    modelprediction=reactive({
        hpInput<-input$sliderHP
        predict(model,newdata=data.frame(hp=hpInput))
    })
    
    output$plot<-renderPlot({
        hpInput<-input$sliderHP
    
    plot(mtcars$hp,mtcars$mpg,xlab="Horse Power",ylab="Miles per Gallon")
    if(input$model){
    abline(model,col="blue")
    }
    })

output$pred<-renderText({
    modelprediction()
    })

})
