

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Prediction of Miles per Gallon"),
    sidebarPanel(
      numericInput('wt', 'Weight (1000 lbs)', 3.5, min = 0, max = 10, step = 0.1
      ),
      numericInput('qsec', 'Time in sec', 15, min = 0, max = 30, step = 0.1
      ),
      numericInput('am', 'Automatic =1/Manual=0', 1, min = 0, max = 1, step = 1
      ),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered weight'),
      verbatimTextOutput("inputValue1"),
      h4('You entered 1/4 mile time'),
      verbatimTextOutput("inputValue2"),
      h4('You entered Automatic or Manual'),
      verbatimTextOutput("inputValue3"),
      
      h4('Which resulted in a prediction of miles per gallon consumption '),
      verbatimTextOutput("prediction")
    
      )
  )
)