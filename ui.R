### This is ui.R

library(shiny)

fluidPage(

    fluidRow(
        column(3, wellPanel(
            h3("Unit Converter for Foresters"),
            selectInput(inputId="dimension","Dimension",
                        choices = unique(.conversions$dim),
                        selected = "Length"),
            tags$head(tags$style(HTML("
    .shiny-split-layout > div {
                                      overflow: visible;
                                        }
                                      "))),
            h4("convert from:"),
            splitLayout(
                numericInput("in_val", "", 1),
                selectInput(inputId="origin","",
                            choices = unique(.conversions$unit),
                            selected = "cm")),
        
            h4("         convert to:"),
            splitLayout(
                br(),
                selectInput(inputId="target","",
                            choices = unique(.conversions$unit),
                            selected = "cm"))
        ))),
    
    fluidRow(column(3, verbatimTextOutput("out_val")))
    )
    
    
    
    





