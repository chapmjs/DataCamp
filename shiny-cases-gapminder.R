# shiny-cases, gapminder, chapter 2
# started 20190528

library(gapminder)

min(gapminder$pop)
max(gapminder$pop)

subset(gapminder, country == "Canada" & year < 1965)

subset(gapminder, country == "Canada" & year == 1962)$lifeExp
