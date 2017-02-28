setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Cetina_amorpsique.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
cetina.amorpsique.words.l <- strsplit(poem.lower.v, "\\W")
cetina.amorpsique.words.v <- unlist(cetina.amorpsique.words.l)
not.blanks.v <- which(cetina.amorpsique.words.v!="")
cetina.amorpsique.words.v <- cetina.amorpsique.words.v[not.blanks.v]
cetina.amorpsique.freqs.t <- table(cetina.amorpsique.words.v)
sorted.cetina.amorpsique.freqs.t <- sort(cetina.amorpsique.freqs.t, decreasing = TRUE)
sorted.cetina.amorpsique.rel.freqs.t <- 100*(sorted.cetina.amorpsique.freqs.t/sum(sorted.cetina.amorpsique.freqs.t))

length(cetina.amorpsique.words.v)

sorted.cetina.amorpsique.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.cetina.amorpsique.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.cetina.amorpsique.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.cetina.amorpsique.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.cetina.amorpsique.rel.freqs.t <- round(sorted.cetina.amorpsique.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.cetina.amorpsique.rel.freqs.t[1:25], file = "results/tabular/Cetina_amorpsique.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.cetina.amorpsique.rel.freqs.t["soles"]

# redondea las frecuencias absolutas
rounded.sorted.cetina.amorpsique.rel.freqs.t <- round(sorted.cetina.amorpsique.rel.freqs.t)