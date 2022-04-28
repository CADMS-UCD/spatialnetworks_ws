# This file contains the packages that we will be using in this workshop.
packages = c("dplyr", # For data manipulation
             'ggplot2', # For plots and figures
             'ggpubr', # To make different plot arrangements
             "sf", # For spatial data manipulation
             'sp',
             'scatterplot3d',
             'raster',
             "lubridate", # For manipulating time and dates
             'plotly', # To make interactive figures
             'DT', # To make interactive tables
             'devtools', # To install packages from github
             'tidygraph', # For network manipulation
             'igraph', # Another package for network statistics/manipulation
             'ggraph', # For network visualization
             'networkD3', # Interactive network visualization
             'visNetwork' # For interactive network visualization
)

## Now load or install&load all
package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)

# devtools::install_github("rstudio/httpuv") # To run shiny in rstudio cloud
devtools::install_github('jpablo91/STNet') # To access the workshop data