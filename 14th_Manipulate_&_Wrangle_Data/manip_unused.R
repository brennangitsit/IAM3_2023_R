#Or for `eruptions`, you want to recode negative elevations to "underwater" and positive elevations to "above ground".

#Here is how you would do that using `case_match`. I am adding this to the *original* dataset, not assigning it a new object.
#This means I am rewriting the original dataset so I better be sure it works!
  
# Create a new variable for underwater vs. above ground eruptions
eruptions <- eruptions %>% 
  mutate(case_match(
    
  ))

# What summary statistic?
library(tidyverse)
eruptions %>% 
  group_by(subregion) %>% 
  summarise(mean_year_erupted = mean(year, na.rm=T),
            unknown_statistic = sd(year, na.rm=T)/sqrt(n()))

