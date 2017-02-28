setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Lope_circe.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
lope.circe.words.l <- strsplit(poem.lower.v, "\\W")
lope.circe.words.v <- unlist(lope.circe.words.l)
not.blanks.v <- which(lope.circe.words.v!="")
lope.circe.words.v <- lope.circe.words.v[not.blanks.v]
lope.circe.freqs.t <- table(lope.circe.words.v)
sorted.lope.circe.freqs.t <- sort(lope.circe.freqs.t, decreasing = TRUE)
sorted.lope.circe.rel.freqs.t <- 100*(sorted.lope.circe.freqs.t/sum(sorted.lope.circe.freqs.t))

length(lope.circe.words.v)

sorted.lope.circe.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.lope.circe.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.lope.circe.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.lope.circe.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.lope.circe.rel.freqs.t <- round(sorted.lope.circe.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.lope.circe.rel.freqs.t[1:25], file = "results/tabular/Lope_circe.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.lope.circe.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.lope.circe.rel.freqs.t <- round(sorted.lope.circe.rel.freqs.t)