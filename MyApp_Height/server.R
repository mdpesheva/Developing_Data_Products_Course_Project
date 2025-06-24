library(shiny)

heightfunc <- function(height_m, height_f, sex){
    if(sex=="male"){
        height_c <- (height_m + height_f)/2 + 6.5
    }
    else if(sex=="female"){
        height_c <- (height_m + height_f)/2 - 6.5
    }
}

shinyServer(
    function(input, output){
        output$height_c <- renderText({heightfunc(input$height_m, input$height_f,input$sex)})
    }
)
