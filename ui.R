#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#




library(shiny)

# Define UI for application that draws a histogram

shinyUI(
      
    # code below can be used to automatically zome browsers (in this case to 180%)
#    tags$style("
#              body {
#    -moz-transform: scale(1.8, 1.8); /* Moz-browsers */
#    zoom: 1.8; /* Other non-webkit browsers */
#    zoom: 180%; /* Webkit browsers */
#}
#              "),
    

    fluidPage(
    
    # Application title
    column(12,align="center", titlePanel("Baby's Sleep Data")),
    fluidRow(column(12, align="center",
                         fileInput("file1", "Choose CSV File or leave blank to continue using example data",
                                   accept = c(
                                       "text/csv",
                                       "text/comma-separated-values,text/plain",
                                       ".csv")
                         )
                     ),
                 fluidRow(column(12, align = "center", uiOutput("interaction_dateRange"))),
                     mainPanel(
                         tableOutput("contents")
                     )
            ),
 #   fluidRow(column(12, align="center", dateRangeInput('dateRange',
 #                  label = paste('Select the date range you wish to analyze'),
 #                  start = min(dfnap$napt), end = max(dfnap$napt),
 #                 min = min(dfnap$napt), max = max(dfnap$napt) + 12*60*60)),             
    mainPanel(
            plotOutput("distPlot"),align="center",width = 12
        ),
     tags$style(type="text/css",
         ".shiny-output-error { visibility: hidden; }",
         ".shiny-output-error:before { visibility: hidden; }"
)
    )
 )
 


