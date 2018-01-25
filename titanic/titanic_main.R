# PACKAGES ----------------------------------------------------------------
library(data.table)
library(dplyr)


# PATH --------------------------------------------------------------------
dataPath <- "data/"


# DATA CLEANING -----------------------------------------------------------
trainData <- fread(paste0(dataPath, 'train.csv'), sep = ",")
newNames <- c("passangerId", "survived", "class", "name", "sex", "age", "nSameAgeRelatives",
              "nDiffAgeRelatives", "ticket", "fare", "cabin", "harbour")
setnames(trainData, names(trainData), newNames)


