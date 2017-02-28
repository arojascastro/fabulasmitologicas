setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Montalban_orfeo.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
montalban.orfeo.words.l <- strsplit(poem.lower.v, "\\W")
montalban.orfeo.words.v <- unlist(montalban.orfeo.words.l)
not.blanks.v <- which(montalban.orfeo.words.v!="")
montalban.orfeo.words.v <- montalban.orfeo.words.v[not.blanks.v]
montalban.orfeo.freqs.t <- table(montalban.orfeo.words.v)
sorted.montalban.orfeo.freqs.t <- sort(montalban.orfeo.freqs.t, decreasing = TRUE)
sorted.montalban.orfeo.rel.freqs.t <- 100*(sorted.montalban.orfeo.freqs.t/sum(sorted.montalban.orfeo.freqs.t))

length(montalban.orfeo.words.v)

sorted.montalban.orfeo.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.montalban.orfeo.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.montalban.orfeo.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.montalban.orfeo.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.montalban.orfeo.rel.freqs.t <- round(sorted.montalban.orfeo.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.montalban.orfeo.rel.freqs.t[1:25], file = "results/tabular/Montalban_orfeo.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.montalban.orfeo.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.montalban.orfeo.rel.freqs.t <- round(sorted.montalban.orfeo.rel.freqs.t)