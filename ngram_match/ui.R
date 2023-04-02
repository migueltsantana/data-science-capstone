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
fluidPage(

    # Application title
    titlePanel("N-gram prediction model"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h2("Instructions"),
            p("Enter a word or a sentence in the text box;"),
            p("Wait for the word prediction. It's automatic, no need to submit or click 'Enter'"),
            HTML("<b>Warning: </b> A question mark means no prediction possible.")
        ),

        # Show a plot of the generated distribution
        mainPanel(
          tabPanel("predict",
                   textInput("user_input", h3("Your text:"),
                             value = "Your words"),
                   h3("Next predicted word:"),
                   h4(em(span(textOutput("ngram"), style="color:green"))))
        )
    )
)
