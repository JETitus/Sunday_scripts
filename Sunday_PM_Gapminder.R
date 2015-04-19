# This is a script to explore the gapminder dataset using R
# James Titus-McQuillan
# jtmcquillan@uta.edu
# April 19th, 2015

# Install dplyr and its depnedencies
# install.packages("dplyr", dependencies = TRUE)

# Load dplyr with its dependencies
library("dplyr")

# Read in data as tab-delimited
gap.in = read.table("output/combined_gapMinder.tsv", sep = "\t", header=TRUE)

# Parse data using dplyr
gap.in %>%
  filter(pop>15000000) %>%
  select(country, year, pop) %>%
  group_by(country, year) %>%
  summarize(min=min(pop))

# Challange
# Calc the mean pop per continent per years for years prior to 1990
gap.in %>%
  filter(year<1990) %>%
  select(continent, year, pop) %>%
  group_by(continent,year) %>%
  summarize(mean=mean(pop)) %>%
  as.data.frame -> data.out

for (row.number in 1:10){
  for (col.number in 1:5){
    print(gap.in[row.number,col.number])
  }
}


gap.in[1:10,1:5]

add.me=function(x,y){
  x + y
}

add.me(3,4)
