setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/sub-corpus/soledades.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
soledades.words.l <- strsplit(poem.lower.v, "\\W")
soledades.words.v <- unlist(soledades.words.l)
not.blanks.v <- which(soledades.words.v!="")
soledades.words.v <- soledades.words.v[not.blanks.v]
soledades.freqs.t <- table(soledades.words.v)
sorted.soledades.freqs.t <- sort(soledades.freqs.t, decreasing = TRUE)
sorted.soledades.rel.freqs.t <- 100*(sorted.soledades.freqs.t/sum(sorted.soledades.freqs.t))

length(soledades.words.v)

sorted.soledades.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.soledades.freqs.t[1:10])

#crea gráfico con las frecuencias relativas
plot(sorted.soledades.rel.freqs.t[1:10], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:10, labels=names(sorted.soledades.rel.freqs.t[1:10]))

# redondea las frecuencias absolutas
rounded.sorted.soledades.rel.freqs.t <- round(sorted.soledades.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.soledades.rel.freqs.t[1:25], file = "soledades.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.soledades.rel.freqs.t["crepúsculos"]

# redondea las frecuencias absolutas
rounded.sorted.soledades.rel.freqs.t <- round(sorted.soledades.rel.freqs.t)