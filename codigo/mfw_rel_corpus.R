setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/sub-corpus/corpus.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
Corpus.words.l <- strsplit(poem.lower.v, "\\W")
Corpus.words.v <- unlist(Corpus.words.l)
not.blanks.v <- which(Corpus.words.v!="")
Corpus.words.v <- Corpus.words.v[not.blanks.v]
Corpus.freqs.t <- table(Corpus.words.v)
sorted.Corpus.freqs.t <- sort(Corpus.freqs.t, decreasing = TRUE)
sorted.Corpus.rel.freqs.t <- 100*(sorted.Corpus.freqs.t/sum(sorted.Corpus.freqs.t))

length(Corpus.words.v)

sorted.Corpus.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.Corpus.freqs.t[1:10])

#crea gráfico con las frecuencias relativas
plot(sorted.Corpus.rel.freqs.t[1:10], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:10, labels=names(sorted.Corpus.rel.freqs.t[1:10]))

# redondea las frecuencias absolutas
rounded.sorted.Corpus.rel.freqs.t <- round(sorted.Corpus.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.Corpus.rel.freqs.t[1:25], file = "Corpus.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.Corpus.rel.freqs.t["trémula"]

# redondea las frecuencias absolutas
rounded.sorted.Corpus.rel.freqs.t <- round(sorted.Corpus.rel.freqs.t)