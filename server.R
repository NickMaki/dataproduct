library(shiny)


f<-function(frame){
 
  fit_all<-lm(mpg~.,data=mtcars)
  fit_best <- step(fit_all, direction = "both")
  fit_best$coefficients
  
}


shinyServer(
  function(input, output) {
   
    data(mtcars)
    output$inputValue1 <- renderPrint({input$wt})
    output$inputValue2 <- renderPrint({input$qsec})
    output$inputValue3 <- renderPrint({input$am})
    coeff<-f(mtcars)
    names(coeff)<-"Predicted"
    output$prediction<-renderPrint({coeff[1]+input$wt*coeff[2]+input$qsec*coeff[3]+input$am*coeff[4]})
       }
)