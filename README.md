# DATA550_Final_Project_KJ

This repository contains the code and files for generating the final report on COVID19 patients admitted to ICU.

## Contents

- [Description](#description)
- [How to Generate the Final Report](#how-to-generate-the-final-report)
- [Code for Creating the Table and Figure](#code-for-creating-the-table-and-figure)

## Description

Coronavirus disease is an infectious disease and most people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without requiring special treatment. Older people and vulnerable population are more likely to develop serious illness. This report will see the descriptive statistics of 1000 COVID-19 patients including their age, sex, patient type, pneumonia status, and if the patient got admitted to Intensive Care Unit (ICU). 

## How to Generate the Final Report

To generate the final report, follow these steps:

1. Clone this repository to your local machine.
2. Install the necessary dependencies (e.g., R, R packages).
3. Use renv::restore() to restore to reinstall the specific package versions recorded in the lockfile
3. Navigate to the project directory.
4. Run the following command in your terminal:   make report
5. The .html report will be created in a folder called "output"

## Data is in the folder called "Data"


## Code for Creating the Table and Figure

The code for creating both the required table and figure is located within the COVID19_Report.Rmd file.

- Code for the Table is under the heading "Tabular Analysis"
- Code for the Figure is under the heading "Graphical Analysis"

## How to Build the Docker Image

To use the pre-built Docker image from Docker Hub, follow these steps:

1. Ensure Docker is installed on your system.
2. Pull the Docker image from Docker Hub by running the following command:`docker pull ketki27/project_image`
3. Run the following command in your terminal or command prompt: `docker run -v ketki27/project_image`

## To run the Docker container and compile the report, execute the following command:
make report
