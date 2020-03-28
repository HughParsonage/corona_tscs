README
================
Robert Kubinec
3/28/2020

## About This Repository

This repository contains data and code to fit the model described in “A
Proposed Model for Partial Identification of SARS-CoV2 Infection Rates
Given Observed Tests and Cases”, link here. The following is a brief
list of the files in the repo relevant to the paper. There are also
other files in the repo related to the collection of government policy
data.

1.  **corona\_tscs\_betab.stan**: This Stan model contains a
    partially-identified model of COVID-19 that permits relative
    distinctions to be made between areas/countries/states’ infection
    rates. The parameter `num_infected_high` indexes the infection rate
    by time point and country. As the latent process is on the logit
    scale, it must be converted via the inverse-logit function to a
    proportion. However, the resulting estimate should not be
    interpreted as the total infected in a country, but rather a
    relative ranking of which countries/areas are the most infected up
    to the current time point.

2.  **corona\_tscs\_betab\_scale.stan**: This Stan model extends the
    partially-identified model with the 10% lower threshold for tests to
    infections ratio described in the paper. This model will produce an
    estimate for `num_infected_high` that when converted with the
    inverse-logit function will represent the proportion infected in a
    country conditional on the model’s prior concerning the tests to
    infections ratio.

3.  **kubinec\_model\_draft.Rmd**: A copy of the paper draft with
    embedded R code. Because the fitted model objects are too large to
    put on Github, all Stan models must be re-fit to compile the paper.
    The process will take approximately 4-5 hours.

4.  **data**: The data folder contains CSVs of tests and cases for US
    states that were used to fit the models in the paper.

5.  **BibTexDatabase.bib**: This file contains the Bibtex bibliography
    for the paper.