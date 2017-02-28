setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Villamediana_apolodafne.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
villamediana.apolodafne.words.l <- strsplit(poem.lower.v, "\\W")
villamediana.apolodafne.words.v <- unlist(villamediana.apolodafne.words.l)
not.blanks.v <- which(villamediana.apolodafne.words.v!="")
villamediana.apolodafne.words.v <- villamediana.apolodafne.words.v[not.blanks.v]
villamediana.apolodafne.freqs.t <- table(villamediana.apolodafne.words.v)
sorted.villamediana.apolodafne.freqs.t <- sort(villamediana.apolodafne.freqs.t, decreasing = TRUE)
sorted.villamediana.apolodafne.rel.freqs.t <- 100*(sorted.villamediana.apolodafne.freqs.t/sum(sorted.villamediana.apolodafne.freqs.t))

length(villamediana.apolodafne.words.v)

sorted.villamediana.apolodafne.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.villamediana.apolodafne.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.villamediana.apolodafne.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.villamediana.apolodafne.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.villamediana.apolodafne.rel.freqs.t <- round(sorted.villamediana.apolodafne.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.villamediana.apolodafne.rel.freqs.t[1:25], file = "results/tabular/Villamediana_apolodafne.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.villamediana.apolodafne.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.villamediana.apolodafne.rel.freqs.t <- round(sorted.villamediana.apolodafne.rel.freqs.t)