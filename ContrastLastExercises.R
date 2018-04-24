hs_europe <- subset(df, df$Region=="Central and Eastern Europe" | df$Region=="Western Europe")
hs_no_europe <- subset(df, df$Region!="Central and Eastern Europe" & df$Region!="Western Europe")

mean_europe_h0 <- 5.7
z = my.contrast(hs_europe$HS, mean_europe_h0)

my.p_value <- function(z, vector_param){
  p = 2 * pt(-abs(z), df = length(hs_europe$HS) - 1)
  p
}



pt(-abs(z), df = length(hs_europe$HS) - 1)

my.p_value(z, hs_europe$HS)
t.test(hs_europe$HS, mu=mean_europe_h0, conf.level = 0.99)
t.test(hs_europe$HS, mu=mean_europe_h0, conf.level = 0.95)


# para definir nuestro intervalo de confianza
# average +- z-score * standardError

#primero, elegimos el z-score con qnorm, despues multiplicamos por sd / sqrt(n)
error <- qnorm(0.995) * sd(df$HS) / sqrt(length(df$HS))
mean(df$HS) - error
mean(df$HS) + error


n <- length(df$HS)
m <- mean(df$HS)

conf.level <- 0.99
z <- qt((1+conf.level)/2, df=n-1)
se <- sd(df$HS)/sqrt(n)
ci <- z * se

m-ci
m+ci



alpha <- 0.03

n1 <- length(hs_europe$HS)
n2 <- length(hs_no_europe$HS)

dist_freedom <- n1 + n2 - 2
x1 <- mean(hs_europe$HS)
x2 <- mean(hs_no_europe$HS)

# varianza
s1 <- var(hs_europe$HS)
s2 <- var(hs_no_europe$HS)


t_stat <- (x1 - x2) / sqrt((s1 ^ 2 / n1) + s2 ^ 2 / n2)
t_crit <- # de la tabla de distribucion
  
  
  
x1 <- hs_europe$HS
x2 <- hs_no_europe$HS
n1 <- length(x1)
n2 <- length(x2)

t <- (mean(x1) - mean(x2)) / sqrt(var(x1) / n1 + var(x2) / n2)
t

distf.num <- (var(x1) / n1 + var(x2) / n2)^2
distf.denom <- var(x1)^2 / (n1^2 * (n1 - 1)) + var(x2)^2 / (n2^2 * (n2 - 1))
distf <- distf.num / distf.denom
distf

#usando distf + t en la tabla  

x1 <- df2016$HS
x2 <- df2017$HS
n1 <- length(x1)
n2 <- length(x2)

t <- (mean(x1) - mean(x2)) / sqrt(var(x1) / n1 + var(x2) / n2)
t

distf.num <- (var(x1) / n1 + var(x2) / n2)^2
distf.denom <- var(x1)^2 / (n1^2 * (n1 - 1)) + var(x2)^2 / (n2^2 * (n2 - 1))
distf <- distf.num / distf.denom
distf
t.test(x1, x2)

  
  
  
t.test(hs_europe$HS, hs_no_europe$HS)
t.test()
t.test( x1, x2, sd(hs_europe$HS), sd(hs_europe$HS), length(hs_europe$HS), length(hs_no_europe$HS))


df2017 <- read.csv("2017.csv")
df2016 <- read.csv("2016_clean.csv")

colnames(df2017)[which(names(df2017) == "Happiness.Rank")] <- "HR"
colnames(df2017)[which(names(df2017) == "Happiness.Score")] <- "HS"
colnames(df2017)[which(names(df2017) == "Lower.Confidence.Interval")] <- "LCI"
colnames(df2017)[which(names(df2017) == "Upper.Confidence.Interval")] <- "UCI"
colnames(df2017)[which(names(df2017) == "GDP.per.Capita")] <- "GPC"
colnames(df2017)[which(names(df2017) == "Life.Expectancy")] <- "LE"
colnames(df2017)[which(names(df2017) == "Government.Corruption")] <- "GC"
colnames(df2017)[which(names(df2017) == "Dystopia.Residual")] <- "DR"
colnames(df2017)





names(mydata)[var_w.punt] <- str_c(letter_1,letter_2,letter_3)

n.var <- names(mydata)
