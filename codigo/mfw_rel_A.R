setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/sub-corpus/A.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
A.words.l <- strsplit(poem.lower.v, "\\W")
A.words.v <- unlist(A.words.l)
not.blanks.v <- which(A.words.v!="")
A.words.v <- A.words.v[not.blanks.v]
A.freqs.t <- table(A.words.v)
sorted.A.freqs.t <- sort(A.freqs.t, decreasing = TRUE)
sorted.A.rel.freqs.t <- 100*(sorted.A.freqs.t/sum(sorted.A.freqs.t))

length(A.words.v)

sorted.A.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.A.freqs.t[1:10])

#crea gráfico con las frecuencias relativas
plot(sorted.A.rel.freqs.t[1:10], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:10, labels=names(sorted.A.rel.freqs.t[1:10]))

# redondea las frecuencias absolutas
rounded.sorted.A.rel.freqs.t <- round(sorted.A.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.A.rel.freqs.t[1:25], file = "A.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.A.rel.freqs.t["que"]

# redondea las frecuencias absolutas
rounded.sorted.A.rel.freqs.t <- round(sorted.A.rel.freqs.t)