library(tidyverse)
library(stantargets)
library(targets)
library(tarchetypes)
library(janitor)
library(here)
library(fs)
library(dplyr)
library(ggtext)
library(bridgesampling)
library(bayesplot)
library(stringr)
library(ggplot2)
library(loo)

source("R/utils-import_effort_pilot_data.R")

stem_data_import <- list(
  tar_target(
    redcap_data,
    effort_pilot_read_redcap_data(
      path = "data/redcap_data.xlsx"
    )
  )
)