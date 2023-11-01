library(tidyverse)
library(dplyr)

# house <- read_csv("Desktop/Codes/GitHub/R-Einstieg/house.csv")
# na_rows <- which(is.na(house$party))
# only_1976 <- house %>% filter(year == 1976)
# View(only_1976)

View(mpg)
mpg_audi <- filter(mpg, mpg$manufacturer == "audi")
mpg_metric <- mutate(mpg, cty_metric = 0.425144 * cty)
View(mpg_metric)
glimpse(mpg_metric)

mpg %>%
  group_by(class) %>%
  summarise(mean(cty),
            median(cty))




# Data viz with ggplot2

ggplot(mpg, aes(x = cty))+ geom_histogram()


ggplot(mpg, aes(x = cty)) + 
  geom_freqpoly() + 
  labs(x = "City mealage")


ggplot(mpg, aes(x = cty, y = hwy, color = class)) + 
  geom_point() + 
  scale_color_brewer(palette = "Dark2")
