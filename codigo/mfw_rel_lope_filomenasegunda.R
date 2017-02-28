setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Lope_filomenasegunda.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
lope.filomenasegunda.words.l <- strsplit(poem.lower.v, "\\W")
lope.filomenasegunda.words.v <- unlist(lope.filomenasegunda.words.l)
not.blanks.v <- which(lope.filomenasegunda.words.v!="")
lope.filomenasegunda.words.v <- lope.filomenasegunda.words.v[not.blanks.v]
lope.filomenasegunda.freqs.t <- table(lope.filomenasegunda.words.v)
sorted.lope.filomenasegunda.freqs.t <- sort(lope.filomenasegunda.freqs.t, decreasing = TRUE)
sorted.lope.filomenasegunda.rel.freqs.t <- 100*(sorted.lope.filomenasegunda.freqs.t/sum(sorted.lope.filomenasegunda.freqs.t))

length(lope.filomenasegunda.words.v)

sorted.lope.filomenasegunda.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.lope.filomenasegunda.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.lope.filomenasegunda.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.lope.filomenasegunda.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.lope.filomenasegunda.rel.freqs.t <- round(sorted.lope.filomenasegunda.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.lope.filomenasegunda.rel.freqs.t[1:25], file = "results/tabular/Lope_filomenasegunda.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.lope.filomenasegunda.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.lope.filomenasegunda.rel.freqs.t <- round(sorted.lope.filomenasegunda.rel.freqs.t)