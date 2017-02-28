setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Villamediana_fenix.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
villamediana.fenix.words.l <- strsplit(poem.lower.v, "\\W")
villamediana.fenix.words.v <- unlist(villamediana.fenix.words.l)
not.blanks.v <- which(villamediana.fenix.words.v!="")
villamediana.fenix.words.v <- villamediana.fenix.words.v[not.blanks.v]
villamediana.fenix.freqs.t <- table(villamediana.fenix.words.v)
sorted.villamediana.fenix.freqs.t <- sort(villamediana.fenix.freqs.t, decreasing = TRUE)
sorted.villamediana.fenix.rel.freqs.t <- 100*(sorted.villamediana.fenix.freqs.t/sum(sorted.villamediana.fenix.freqs.t))

length(villamediana.fenix.words.v)

sorted.villamediana.fenix.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.villamediana.fenix.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.villamediana.fenix.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.villamediana.fenix.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.villamediana.fenix.rel.freqs.t <- round(sorted.villamediana.fenix.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.villamediana.fenix.rel.freqs.t[1:25], file = "results/tabular/Villamediana_fenix.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.villamediana.fenix.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.villamediana.fenix.rel.freqs.t <- round(sorted.villamediana.fenix.rel.freqs.t)