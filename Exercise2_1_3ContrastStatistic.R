df <- read.csv("2016_clean.csv")
my.contrast <- function(x, mean_hipothesis){
  z <- (mean(x) - mean_hipothesis) / (sd(x) / sqrt(length(x)))
  print(paste("Contraste estadístico: ", z))
  z
}

mean_informed <- 5.0
my.contrast(df$HS, mean_informed)

mean(df$HS) - mean_informed
sd(df$HS) / sqrt(length(df$HS))

z = my.contrast(df$HS, mean_informed)

# 2 por ser bilateral
2 * pt(-abs(z), df = length(df$HS) - 1)


t.test(df$HS, mu=5.0, conf.level = 0.99)