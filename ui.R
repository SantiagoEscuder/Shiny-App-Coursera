vars <- setdiff(names(BASE_BM_Latinoamerica_TIC), "Pais")

pageWithSidebar(
  headerPanel('Clustering de paises de acuerdo a indicadores TIC'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', vars),
    selectInput('ycol', 'Y Variable', vars, selected = vars[[2]]),
    numericInput('clusters', 'Numero clusters', 3, min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1'),
    h4("Se trata de un analisis de una base de paises latinoamericanos segun diferentes indicadores TIC. 
      Todas las variables se encuetran medidas en porcentaje
      Por mas informacion ver: https://datos.bancomundial.org/indicador"))
)
  
