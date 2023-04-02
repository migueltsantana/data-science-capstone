FROM rocker/shiny-verse:latest
RUN install2.r rsconnect
WORKDIR /home/shinyusr
COPY ngram_match ngram_match
CMD Rscript ngram_match/deploy.R
RUN R -e "install.packages('tidytext',dependencies=TRUE, repos='http://cran.rstudio.com/')"
