setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Barahona_vertumno.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
barahona.vertumno.words.l <- strsplit(poem.lower.v, "\\W")
barahona.vertumno.words.v <- unlist(barahona.vertumno.words.l)
not.blanks.v <- which(barahona.vertumno.words.v!="")
barahona.vertumno.words.v <- barahona.vertumno.words.v[not.blanks.v]
barahona.vertumno.freqs.t <- table(barahona.vertumno.words.v)
sorted.barahona.vertumno.freqs.t <- sort(barahona.vertumno.freqs.t, decreasing = TRUE)
sorted.barahona.vertumno.rel.freqs.t <- 100*(sorted.barahona.vertumno.freqs.t/sum(sorted.barahona.vertumno.freqs.t))

# cuenta las palabras en total 
length(barahona.vertumno.words.v)

sorted.barahona.vertumno.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.barahona.vertumno.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.barahona.vertumno.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.barahona.vertumno.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.barahona.vertumno.rel.freqs.t <- round(sorted.barahona.vertumno.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.barahona.vertumno.rel.freqs.t[1:25], file = "results/tabular/Barahona_vertumno.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.barahona.vertumno.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.barahona.vertumno.rel.freqs.t <- round(sorted.barahona.vertumno.rel.freqs.t)