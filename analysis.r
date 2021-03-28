library(tidyverse,warn.conflicts = F)
library(tidymodels,warn.conflicts = F)
library(here)

d.price <- read_tsv(paste(here(),"price_estimates.txt",sep="/"))

d.group <- read_tsv(paste(here(),"group_estimates.txt",sep="/")) %>% 
  mutate_all(as.factor)


skimr::skim(d.price)
skimr::skim(d.group)

