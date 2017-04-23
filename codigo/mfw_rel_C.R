setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/sub-corpus/C.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
C.words.l <- strsplit(poem.lower.v, "\\W")
C.words.v <- unlist(C.words.l)
not.blanks.v <- which(C.words.v!="")
C.words.v <- C.words.v[not.blanks.v]
C.freqs.t <- table(C.words.v)
sorted.C.freqs.t <- sort(C.freqs.t, decreasing = TRUE)
sorted.C.rel.freqs.t <- 100*(sorted.C.freqs.t/sum(sorted.C.freqs.t))

length(C.words.v)

sorted.C.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.C.freqs.t[1:20])

#crea gráfico con las frecuencias relativas
plot(sorted.C.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.C.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.C.rel.freqs.t <- round(sorted.C.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(rounded.sorted.C.rel.freqs.t[1:25], file = "C.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.C.rel.freqs.t["vïolarán"]

# redondea las frecuencias absolutas
rounded.sorted.C.rel.freqs.t <- round(sorted.C.rel.freqs.t)