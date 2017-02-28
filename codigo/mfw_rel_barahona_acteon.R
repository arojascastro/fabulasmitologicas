setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Barahona_acteon.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
barahona.acteon.words.l <- strsplit(poem.lower.v, "\\W")
barahona.acteon.words.v <- unlist(barahona.acteon.words.l)
not.blanks.v <- which(barahona.acteon.words.v!="")
barahona.acteon.words.v <- barahona.acteon.words.v[not.blanks.v]
barahona.acteon.freqs.t <- table(barahona.acteon.words.v)
sorted.barahona.acteon.freqs.t <- sort(barahona.acteon.freqs.t, decreasing = TRUE)
sorted.barahona.acteon.rel.freqs.t <- 100*(sorted.barahona.acteon.freqs.t/sum(sorted.barahona.acteon.freqs.t))

# obtiene z-scores
freqs.m <- unlist(barahona.acteon.freqs.t)
z.score.barahona.acteon.m <- scale(barahona.acteon.raw.freqs.m, center = TRUE, scale = TRUE)
sorted.z.score.barahona.acteon.m <-sort(z.score.barahona.acteon.m, decreasing = TRUE)
sorted.z.score.barahona.acteon.m[1:10]

# cuenta las palabras en total 
length(barahona.acteon.words.v)

# muestra palabras más frecuentes relativas ordenadas en decreciente
sorted.barahona.acteon.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.barahona.acteon.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.barahona.acteon.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.barahona.acteon.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.barahona.acteon.rel.freqs.t <- round(sorted.barahona.acteon.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.barahona.acteon.rel.freqs.t[1:25], file = "results/tabular/Barahona_acteon.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.barahona.acteon.rel.freqs.t["ya"]

# redondea las frecuencias relativas
rounded.sorted.barahona.acteon.rel.freqs.t <- round(sorted.barahona.acteon.rel.freqs.t)