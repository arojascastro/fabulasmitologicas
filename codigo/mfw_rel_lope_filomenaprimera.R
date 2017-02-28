setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Lope_filomenaprimera.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
lope.filomenaprimera.words.l <- strsplit(poem.lower.v, "\\W")
lope.filomenaprimera.words.v <- unlist(lope.filomenaprimera.words.l)
not.blanks.v <- which(lope.filomenaprimera.words.v!="")
lope.filomenaprimera.words.v <- lope.filomenaprimera.words.v[not.blanks.v]
lope.filomenaprimera.freqs.t <- table(lope.filomenaprimera.words.v)
sorted.lope.filomenaprimera.freqs.t <- sort(lope.filomenaprimera.freqs.t, decreasing = TRUE)
sorted.lope.filomenaprimera.rel.freqs.t <- 100*(sorted.lope.filomenaprimera.freqs.t/sum(sorted.lope.filomenaprimera.freqs.t))

length(lope.filomenaprimera.words.v)

sorted.lope.filomenaprimera.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.lope.filomenaprimera.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.lope.filomenaprimera.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.lope.filomenaprimera.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.lope.filomenaprimera.rel.freqs.t <- round(sorted.lope.filomenaprimera.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.lope.filomenaprimera.rel.freqs.t[1:25], file = "results/tabular/Lope_filomenaprimera.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.lope.filomenaprimera.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.lope.filomenaprimera.rel.freqs.t <- round(sorted.lope.filomenaprimera.rel.freqs.t)