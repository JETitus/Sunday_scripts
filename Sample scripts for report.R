

# Load dplyr with its dependencies
library("dplyr")

# Read in data as tab-delimited
gap.in = read.table("output/combined_gapMinder.tsv", sep = "\t", header=TRUE)

gap.in %>%
  filter(country == "Djibouti") -> Djibouti
gap.in %>%
  filter(country == "Albania") -> Albania
gap.in %>%
  filter(country == "Spain") -> Spain


plot(Djibouti$year, Djibouti$gdpPercap, main = "Djibouti", xlab = "Year", ylab = "GDP Per Capita")
plot(Albania$year, Albania$gdpPercap, main = "Albania", xlab = "Year", ylab = "GDP Per Capita")
plot(Spain$year, Spain$gdpPercap, main = "Spain", xlab = "Year", ylab = "GDP Per Capita")

gap.in %>%
  select(continent, lifeExp) %>%
  group_by(continent) %>%
  summarize("mean Life Exp" = mean(lifeExp))
gap.in %>%
  select(continent, lifeExp) %>%
  group_by(continent) %>%
  summarize("min Life Exp" = min(lifeExp))
gap.in %>%
  select(continent, lifeExp) %>%
  group_by(continent) %>%
  summarize("max Life Exp" = max(lifeExp))
