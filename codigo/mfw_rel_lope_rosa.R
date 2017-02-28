setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Lope_rosa.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
lope.rosa.words.l <- strsplit(poem.lower.v, "\\W")
lope.rosa.words.v <- unlist(lope.rosa.words.l)
not.blanks.v <- which(lope.rosa.words.v!="")
lope.rosa.words.v <- lope.rosa.words.v[not.blanks.v]
lope.rosa.freqs.t <- table(lope.rosa.words.v)
sorted.lope.rosa.freqs.t <- sort(lope.rosa.freqs.t, decreasing = TRUE)
sorted.lope.rosa.rel.freqs.t <- 100*(sorted.lope.rosa.freqs.t/sum(sorted.lope.rosa.freqs.t))

length(lope.rosa.words.v)

sorted.lope.rosa.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.lope.rosa.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.lope.rosa.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.lope.rosa.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.lope.rosa.rel.freqs.t <- round(sorted.lope.rosa.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.lope.rosa.rel.freqs.t[1:25], file = "results/tabular/Lope_rosa.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.lope.rosa.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.lope.rosa.rel.freqs.t <- round(sorted.lope.rosa.rel.freqs.t)