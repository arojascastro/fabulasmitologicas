setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Quevedo_apolo.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
quevedo.apolo.words.l <- strsplit(poem.lower.v, "\\W")
quevedo.apolo.words.v <- unlist(quevedo.apolo.words.l)
not.blanks.v <- which(quevedo.apolo.words.v!="")
quevedo.apolo.words.v <- quevedo.apolo.words.v[not.blanks.v]
quevedo.apolo.freqs.t <- table(quevedo.apolo.words.v)
sorted.quevedo.apolo.freqs.t <- sort(quevedo.apolo.freqs.t, decreasing = TRUE)
sorted.quevedo.apolo.rel.freqs.t <- 100*(sorted.quevedo.apolo.freqs.t/sum(sorted.quevedo.apolo.freqs.t))

length(quevedo.apolo.words.v)

sorted.quevedo.apolo.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.quevedo.apolo.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.quevedo.apolo.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.quevedo.apolo.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.quevedo.apolo.rel.freqs.t <- round(sorted.quevedo.apolo.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.quevedo.apolo.rel.freqs.t[1:25], file = "results/tabular/Quevedo_apolo.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.quevedo.apolo.rel.freqs.t["si"]

# redondea las frecuencias absolutas
rounded.sorted.quevedo.apolo.rel.freqs.t <- round(sorted.quevedo.apolo.rel.freqs.t)