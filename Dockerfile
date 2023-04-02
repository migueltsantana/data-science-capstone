FROM rocker/shiny-verse:latest
RUN install2.r rsconnect
WORKDIR /home/shinyusr
COPY ngram_match/app_data app_data
COPY ngram_match/deploy.R deploy.R
COPY ngram_match/ngram.R ngram.R
COPY ngram_match/server.R server.R
COPY ngram_match/ui.R ui.R
CMD Rscript deploy.R
RUN R -e "install.packages('tidytext',dependencies=TRUE, repos='http://cran.rstudio.com/')"
