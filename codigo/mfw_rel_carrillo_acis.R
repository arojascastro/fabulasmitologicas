setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Carrillo_acis.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
carrillo.acis.words.l <- strsplit(poem.lower.v, "\\W")
carrillo.acis.words.v <- unlist(carrillo.acis.words.l)
not.blanks.v <- which(carrillo.acis.words.v!="")
carrillo.acis.words.v <- carrillo.acis.words.v[not.blanks.v]
carrillo.acis.freqs.t <- table(carrillo.acis.words.v)
sorted.carrillo.acis.freqs.t <- sort(carrillo.acis.freqs.t, decreasing = TRUE)
sorted.carrillo.acis.rel.freqs.t <- 100*(sorted.carrillo.acis.freqs.t/sum(sorted.carrillo.acis.freqs.t))

length(carrillo.acis.words.v)

sorted.carrillo.acis.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.carrillo.acis.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.carrillo.acis.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.carrillo.acis.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.carrillo.acis.rel.freqs.t <- round(sorted.carrillo.acis.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.carrillo.acis.rel.freqs.t[1:25], file = "results/tabular/Carrillo.acis.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.carrillo.acis.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.carrillo.acis.rel.freqs.t <- round(sorted.carrillo.acis.rel.freqs.t)