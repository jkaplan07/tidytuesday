#Julia Kaplan
#TidyTuesday - Space launches. From the Readme.md file:  Data Info

#Data comes from [The Economist GitHub](https://github.com/TheEconomist/graphic-detail-data/tree/master/data/2018-10-20_space-launches). The following information was taken directly from their GitHub readme.

# Space launches

#These are the data behind the "space launches" article, [The space race is dominated by new contenders](https://economist.com/graphic-detail/2018/10/18/the-space-race-is-dominated-by-new-contenders).

#Principal data came from the Jonathan McDowell's JSR Launch Vehicle Database, available online at http://www.planet4589.org/space/lvdb/index.html.

library(tidyverse)
library(ggthemes)
spacelaunches<-read.csv("data\\2019\\2019-01-15\\launches.csv")
spacelaunches 

onlyss <-spacelaunches[spacelaunches$type == "Space Shuttle",]
onlyss

ggplot(data = onlyss, mapping = aes (x = launch_year)) +
  geom_histogram(binwidth=1) +
  labs(x='Launch Year', y='Number of Missions', title = "Number of Space Shuttle Missions by Launch Year") +
  theme_few()

ggsave("spaceshuttle_missions_by_launch_year.pdf")
