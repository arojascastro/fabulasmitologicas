setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Hurtadodemendoza_fabulaadonis.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
hurtadodemendoza.fabulaadonis.words.l <- strsplit(poem.lower.v, "\\W")
hurtadodemendoza.fabulaadonis.words.v <- unlist(hurtadodemendoza.fabulaadonis.words.l)
not.blanks.v <- which(hurtadodemendoza.fabulaadonis.words.v!="")
hurtadodemendoza.fabulaadonis.words.v <- hurtadodemendoza.fabulaadonis.words.v[not.blanks.v]
hurtadodemendoza.fabulaadonis.freqs.t <- table(hurtadodemendoza.fabulaadonis.words.v)
sorted.hurtadodemendoza.fabulaadonis.freqs.t <- sort(hurtadodemendoza.fabulaadonis.freqs.t, decreasing = TRUE)
sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t <- 100*(sorted.hurtadodemendoza.fabulaadonis.freqs.t/sum(sorted.hurtadodemendoza.fabulaadonis.freqs.t))

length(hurtadodemendoza.fabulaadonis.words.v)

sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.hurtadodemendoza.fabulaadonis.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t <- round(sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t[1:25], file = "results/tabular/Hurtadodemendoza_fabulaadonis.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t["si"]

# redondea las frecuencias absolutas
rounded.sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t <- round(sorted.hurtadodemendoza.fabulaadonis.rel.freqs.t)