mean(df$Generosity) 
median(df$Generosity)
fivenum(df$Generosity)
summary(fivenum(df$Generosity))
boxplot(df$Generosity, main="Box plot Generosity")

#¿Cómo afectan los outliers a los valores centrales calculados?
i1 <- c(1,1,1,2,1,1,2,1,1,2,1,3,3,2,3,2,2,4,1,1)
mean(i1)
median(i1)

i2 <- c(i1, 150)
mean(i2)
median(i2)
