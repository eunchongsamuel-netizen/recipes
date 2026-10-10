ukraine_taiwan <- read.csv("reputation_us_china_data.csv")

View(ukraine_taiwan)

library(ggplot2)

names(ukraine_taiwan) #AI help
table(ukraine_taiwan$t_credibility, useNA = "ifany") #AI help
table(ukraine_taiwan$us_resolve, useNA = "ifany") #AI help

ggplot(data = ukraine_taiwan, aes(x = us_resolve)) +
  geom_bar() +
  labs(
    title = "Perceptions of U.S. Resolve in an International Crisis",
    x = "Perceived Likelihood of U.S. Resolve",
    y = "Number of Respondents"
  )

