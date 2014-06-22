shinyUI(pageWithSidebar(
    headerPanel("What kind of iris is it?"),
    sidebarPanel(
        helpText("Iris is a type of flower. A simple predictive model has been
                 built to determine the species of iris (setosa, versicolor or 
                 virginica) by looking at only the sepal and petal dimensions.
                 Using the sliders you can choose the value for each dimension 
                 and the model will predict accurately which species of iris
                 it is."),
        sliderInput('sl', 'Sepal Length (cm)',value = 6.1, min = 4.3, max = 7.9, step = 0.05,),
        sliderInput('sw', 'Sepal Width (cm)',value = 3.2, min = 2, max = 4.4, step = 0.05,),
        sliderInput('pl', 'Petal Length (cm)',value = 3.95, min = 1, max = 6.9, step = 0.05,),
        sliderInput('pw', 'Petal Width (cm)',value = 1.3, min = 0.1, max = 2.5, step = 0.05,)
    ),

    mainPanel(
        h4('The inputs that you entered:'),
        verbatimTextOutput("inputs"),
        h4('The type of iris that the model predicted:'),
        verbatimTextOutput("prediction"),
        h4('Details about the model:'),
        p("Random Forest was used to build the predictive model and it is seen that
          the accuracy is around 96% with very few misclassifications."),
        verbatimTextOutput("model")
    )
))