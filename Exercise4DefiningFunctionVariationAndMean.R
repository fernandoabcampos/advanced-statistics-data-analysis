my.mean <- function(x) {
  # media
  sum(x)/length(x)
}

my.var <- function(x) {
  # varianza muestral
  media_x <- my.mean(x)
  sum((x - media_x)^2) / (length(x) - 1)
}

my.validator <- function(x, y, operation, field) {
  if(x == y){
    print(paste("Well done, the ",operation," for ",field," is ", round(x,6)))
  } else {
    print(paste("Error - the function defined for ",operation, " returned values: ",x," != ",y))
  }
}

my.validator(my.mean(df$HS), mean(df$HS), "MEAN", "HS")
my.validator(my.var(df$HS), var(df$HS), "VAR", "HS")
my.validator(my.var(df$Generosity), var(df$Generosity), "VAR", "Generosity")

