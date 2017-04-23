setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/sub-corpus/B.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
B.words.l <- strsplit(poem.lower.v, "\\W")
B.words.v <- unlist(B.words.l)
not.blanks.v <- which(B.words.v!="")
B.words.v <- B.words.v[not.blanks.v]
B.freqs.t <- table(B.words.v)
sorted.B.freqs.t <- sort(B.freqs.t, decreasing = TRUE)
sorted.B.rel.freqs.t <- 100*(sorted.B.freqs.t/sum(sorted.B.freqs.t))

length(B.words.v)

sorted.B.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.B.freqs.t[1:20])

#crea gráfico con las frecuencias relativas
plot(sorted.B.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.B.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.B.rel.freqs.t <- round(sorted.B.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.B.rel.freqs.t[1:25], file = "B.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.B.rel.freqs.t["vultos"]


# redondea las frecuencias absolutas
rounded.sorted.B.rel.freqs.t <- round(sorted.B.rel.freqs.t)
