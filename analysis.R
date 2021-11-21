install.packages("Tmisc")
install.packages("tidyverse")
library(Tmisc)
data(quartet)
View(quartet)
library(tidyverse)

quartet %>%
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))


ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(~set)


