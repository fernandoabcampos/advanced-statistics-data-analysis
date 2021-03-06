df <- read.csv("2016_clean.csv")
head(df)

N <- length(df$HS)
# Media de Happiness Score
mean(df$HS) # Using function
sum(df$HS)/N # Manually calculating

#Mediana
median(df$HS)
HS_sorted <- sort(df$HS)

if((N %% 2) == 0) {
  print(paste("Mi mediana calculada es", (HS_sorted[floor((N+1)/2)] + HS_sorted[ceiling((N+1)/2)]) / 2))
} else {
  print(paste("Mi mediana calculada es", HS_sorted[(N+1)/2]))
}

# five numbers (Tukey)
summary(fivenum(df$HS))

# One by one - manually
min(df$HS)
quantile(df$HS, 0.25) # Mediana del "bottom half"
median(df$HS)
quantile(df$HS, 0.75) # Mediana del "top half"
max(df$HS)

boxplot(df$HS)

sapply(df,class)
summary(df$Region)

# Grafico para cada región representada
boxplot(df$HS ~ df$Region, main="Happiness Score by region", ylab="Happiness Score", las=2)
