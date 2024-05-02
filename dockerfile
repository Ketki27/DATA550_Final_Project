FROM rocker/r-ubuntu

#installs pandoc and vim
RUN apt-get update && apt-get install -y pandoc

RUN mkdir /project
WORKDIR /project

RUN mkdir Data
RUN mkdir output
COPY Data Data
COPY makefile .
COPY dockerfile .
COPY COVID19_Report.Rmd .

COPY .Rprofile .
COPY renv.lock .
RUN mkdir renv
COPY renv/activate.R renv
COPY renv/settings.json renv

RUN Rscript -e "renv::restore(prompt = FALSE)"

RUN mkdir report

CMD make && mv output/COVID19_Report.html report/
