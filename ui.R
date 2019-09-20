

library(shiny)

# Define UI for the application

shinyUI(
      
    fluidPage(
    
    column(12,align="center", titlePanel("Naptime Sleep Graphic")),
    fluidRow(column(12, align="center",
        fileInput("file1", HTML(paste("Choose CSV File",tags$sup(1)," or leave blank to continue using example data",
                                      sep = "")),
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
    mainPanel(
            plotOutput("distPlot"),align="center",width = 12
        ),
    column(12,align="center", HTML(paste(tags$strong("Documentation"),tags$br(),tags$br(),
        "The spiral diagram shows a baby's sleep status within 15 minute segments throughout the day.  Where 0/Blue indicates the baby was asleep and 1/Green indicates the baby was awake.  Other values (most often red) indicate the baby had more than one sleep/wake cycle within the 15 minute period.  (This could be interpreted as the baby's fussy period.)",
        tags$br(),
        tags$br(),
        "The outer ring of the graphic - which is wider - indicates the predicted probability of being asleep or awake during that segment within the next 24 hours based on data from the prior dates.  (Note: predictions are for entertainment purposes only.  Do not torment any child or parent based on this information.)",
        tags$br(),
        tags$br(),
        "You may select the date range you wish to focus in on within the data.",
        tags$br(),
        tags$br(),
        tags$sup(1),
        "Sample data is shown.  You may upload your own data in a comma delimited file with a header row of [\"napt\",\"event\"] and additional rows of sleep data containing a timestamp and event code of 0 for 'went to sleep' and 1 for 'woke up'.  Event rows must be in the following format [YYYY-MM-DD HH:MM:SS,#] for example [2019-01-15 03:37:40,0].  (note: the square brackets [ ] are not part of the actual data.)",
        tags$br(),
        tags$br(),
        "Please see the application ",tags$a(href="www.google.com","Pitch Deck")," for additional information and references.")
                                  )
        ),
     tags$style(type="text/css",
         ".shiny-output-error { visibility: hidden; }",
         ".shiny-output-error:before { visibility: hidden; }"
                )
      )
 )
 


