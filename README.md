# AdvancedDataScienceFinalProject

## Introduction

This project was designed to demonstrate our knowledge of data science which includes obtaining data from a study, pre-processing that data into a usable form, analyzing the data and designing an app that can be powered by the data, creating a shiny web app that uses the data, train a classifier on the data, and finally make a prediction using that classifier. Overall, this process well encapsulates standard procedures with data and visualization that are used to make well-corroborated conclusions that would be reconcluded if the same raw data were given to another group. This is an essential part of data science.

## Data

Our project specifically uses data from 250 participants with chronic kidney disease (CKD) and 150 without CKD. The data contains 24 features plus the classification feature (whether the participant has CKD). Of these, 11 are numeric (e.g. BMI=20.4) and 14 are nominal (e.g. red blood cells=[normal, abnormal]). The features include age, blood pressure, specific gravity, albumin, sugar, red blood cells, pus cell, pus cell clumps, bacteria, blood glucose random, blood urea, serum creatinine, sodium, potassium, hemoglobin, packed cell volume, white bloodcell count, red blood cell count, hypertension, diabetes mellitus,  coronary artery disease, appetite, pedal edema, anemia, and finally CKD. This data is from Dr. P. Soundarapandian M.D. et al. (2015).

## App Description

Live App Link:

This app plots data of patients with Chronic Kidney Disease (CKD) and makes a prediction of CKD given data using a classifying model on the CKD data.

Package requirements: methods, stats, utils, grDevices, graphics, datasets, base, flexdashboard, shiny, leaflet, reshape2, tidyverse, shinyWidgets, dygraphs, magrittr, dplyr, ggplot2, plotly

System Requirements/Environments: This App compiled with RStudio.cloud but will also work with desktop versions of RStudio.

How-to-Use Documentation provided in the app (see app link above).

## How-to

RStudio Cloud:

1) Click the three dots next to "New Project" and choose "From Github".

2) Enter the web address of the repository.

3) Open CKDprediction.Rmd

4) Click "Run Document".


Desktop:

1) Clone the Github Repository on your machine (varies by machine, visit https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository for help)

2) Open RStudio

3) Open CKDprediction.Rmd

4) Run Document

## Example

See How-To run app section above.


## Individual Contributions

Timothy Bedard: 

Jay Mandavilli: predictive models

Tori Rose: data filtering and visualization

Benjamin Straus: readme, app description and how-tos, documentation page

Robby Waxman: data selection and data pre-processing, model performance


## Disclaimer

This app was designed as a project and should not be used for medical diagnoses. Please contact your doctor if you have concerns, or call 9-1-1 for emergencies. 


## References

Arora, M., & Sharma, E. A. (2016). Chronic Kidney Disease Detection by Analyzing Medical Datasets in Weka. International Journal of Computer Application, 6(4), 20–26.
