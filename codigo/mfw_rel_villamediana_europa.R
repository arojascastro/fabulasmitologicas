setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Villamediana_europa.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
villamediana.europa.words.l <- strsplit(poem.lower.v, "\\W")
villamediana.europa.words.v <- unlist(villamediana.europa.words.l)
not.blanks.v <- which(villamediana.europa.words.v!="")
villamediana.europa.words.v <- villamediana.europa.words.v[not.blanks.v]
villamediana.europa.freqs.t <- table(villamediana.europa.words.v)
sorted.villamediana.europa.freqs.t <- sort(villamediana.europa.freqs.t, decreasing = TRUE)
sorted.villamediana.europa.rel.freqs.t <- 100*(sorted.villamediana.europa.freqs.t/sum(sorted.villamediana.europa.freqs.t))

length(villamediana.europa.words.v)

sorted.villamediana.europa.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.villamediana.europa.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.villamediana.europa.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.villamediana.europa.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.villamediana.europa.rel.freqs.t <- round(sorted.villamediana.europa.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.villamediana.europa.rel.freqs.t[1:25], file = "results/tabular/Villamediana_europa.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.villamediana.europa.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.villamediana.europa.rel.freqs.t <- round(sorted.villamediana.europa.rel.freqs.t)