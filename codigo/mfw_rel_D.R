setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/sub-corpus/D.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
D.words.l <- strsplit(poem.lower.v, "\\W")
D.words.v <- unlist(D.words.l)
not.blanks.v <- which(D.words.v!="")
D.words.v <- D.words.v[not.blanks.v]
D.freqs.t <- table(D.words.v)
sorted.D.freqs.t <- sort(D.freqs.t, decreasing = TRUE)
sorted.D.rel.freqs.t <- 100*(sorted.D.freqs.t/sum(sorted.D.freqs.t))

length(D.words.v)

sorted.D.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.D.freqs.t[1:20])

#crea gráfico con las frecuencias relativas
plot(sorted.D.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.D.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.D.rel.freqs.t <- round(sorted.D.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.D.rel.freqs.t[1:25], file = "D.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.D.rel.freqs.t["vïolaba"]

# redondea las frecuencias absolutas
rounded.sorted.D.rel.freqs.t <- round(sorted.D.rel.freqs.t)