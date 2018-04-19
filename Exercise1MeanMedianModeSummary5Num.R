df <- read.csv("2016_clean.csv")
head(df)

# Media de Happiness Score
mean(df$HS) # Using function
sum(df$HS)/length(df$HS) # Calculating

