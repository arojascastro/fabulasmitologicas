setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Gongora_polifemo.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
gongora.polifemo.words.l <- strsplit(poem.lower.v, "\\W")
gongora.polifemo.words.v <- unlist(gongora.polifemo.words.l)
not.blanks.v <- which(gongora.polifemo.words.v!="")
gongora.polifemo.words.v <- gongora.polifemo.words.v[not.blanks.v]
gongora.polifemo.freqs.t <- table(gongora.polifemo.words.v)
sorted.gongora.polifemo.freqs.t <- sort(gongora.polifemo.freqs.t, decreasing = TRUE)
sorted.gongora.polifemo.rel.freqs.t <- 100*(sorted.gongora.polifemo.freqs.t/sum(sorted.gongora.polifemo.freqs.t))

length(gongora.polifemo.words.v)


sorted.gongora.polifemo.rel.freqs.t[100:150]

sorted.gongora.polifemo.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.gongora.polifemo.freqs.t[1:10])

#crea gráfico con las frecuencias relativas
plot(sorted.gongora.polifemo.rel.freqs.t[1:10], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:10, labels=names(sorted.gongora.polifemo.rel.freqs.t[1:10]))

# redondea las frecuencias absolutas
rounded.sorted.gongora.polifemo.rel.freqs.t <- round(sorted.gongora.polifemo.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.gongora.polifemo.rel.freqs.t[1:25], file = "results/tabular/Gongora_polifemo.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.gongora.polifemo.rel.freqs.t["si"]

# redondea las frecuencias absolutas
rounded.sorted.gongora.polifemo.rel.freqs.t <- round(sorted.gongora.polifemo.rel.freqs.t)