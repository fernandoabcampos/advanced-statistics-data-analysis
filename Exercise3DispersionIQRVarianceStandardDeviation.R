happiness <- df$HS
median(happiness)

ri <- quantile(happiness,.75) - quantile(happiness,.25)
print(paste("Rango Intercuartílico", ri))

#rango intercuartílico
IQR(happiness)

#varianza (suma del cuadrado de las desviaciones c respecto media / N)
var(happiness)

# Desviacion tipica - raiz varianza
sd(happiness) 

