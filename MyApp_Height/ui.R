library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Calculate the expected height of you child"),
    sidebarPanel(
        h5("To estimate a child's adult height, you can use the mid-parental height method of both mother and father."),
        numericInput("height_f", "Input the height of father (cm)", value=180),
        numericInput("height_m", "Input the height of mother (cm)", value=165),
        selectInput("sex", "Input the sex of the child:",
                    c("Male" = "male",
                      "Female" = "female")),
        submitButton("Calculate")
        ),
    mainPanel(
        h3("Estimated height of child:"),
        verbatimTextOutput("height_c")
        )
    )
    )

