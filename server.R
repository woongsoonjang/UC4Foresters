library(shiny)


function(input, output,session) {
  
  
t1<-function(){
    if (input$origin=="C"|input$origin=="F"){
        if (input$origin=="C"&input$target=="F") return ((as.numeric(input$in_val) * 9/5) + 32)
        else if (input$origin=="F"&input$target=="C") return ((as.numeric(input$in_val) - 32) * 5/9)           
        else return (as.numeric(input$in_val))
    } else {
    value = as.numeric(input$in_val)/ subset(.conversions, (dim == input$dimension & unit == input$origin), std, drop = TRUE)
    return(value * subset(.conversions, (dim == input$dimension & unit == input$target), std, drop = TRUE))
}}

observe({
    x <- input$dimension
    
    updateSelectInput(session,"origin",
                    label = "",
                    choices = subset(.conversions, dim==x)$unit,
                    selected = subset(.conversions, dim==x)$unit[1])
                      
    updateSelectInput(session,"target",
                    label = "",
                    choices = subset(.conversions, dim==x)$unit,
                    selected = subset(.conversions, dim==x)$unit[2])                  
    
})


  
output$out_val<-renderText({
paste (input$in_val, input$origin, "=", t1(), input$target, sep=" ")

  })




}
  