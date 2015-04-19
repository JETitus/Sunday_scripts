# This is a script to explore the gapminder dataset using R
# James Titus-McQuillan
# jtmcquillan@uta.edu
# April 19th, 2015

# Read in data as tab-delimited
gap.in = read.table("output/combined_gapMinder.tsv", sep = "\t", header=TRUE)

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
