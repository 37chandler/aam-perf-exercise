library(tidyverse,warn.conflicts = F)
library(tidymodels,warn.conflicts = F)
library(here)

d_price <- read_tsv(here("price_estimates.txt"))

d_group <- read_tsv(here("group_estimates.txt")) %>% 
  mutate_all(as_factor)


skimr::skim(d_price)
skimr::skim(d_group)

