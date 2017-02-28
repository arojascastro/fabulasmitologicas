setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Villamediana_faeton.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
villamediana.faeton.words.l <- strsplit(poem.lower.v, "\\W")
villamediana.faeton.words.v <- unlist(villamediana.faeton.words.l)
not.blanks.v <- which(villamediana.faeton.words.v!="")
villamediana.faeton.words.v <- villamediana.faeton.words.v[not.blanks.v]
villamediana.faeton.freqs.t <- table(villamediana.faeton.words.v)
sorted.villamediana.faeton.freqs.t <- sort(villamediana.faeton.freqs.t, decreasing = TRUE)
sorted.villamediana.faeton.rel.freqs.t <- 100*(sorted.villamediana.faeton.freqs.t/sum(sorted.villamediana.faeton.freqs.t))

length(villamediana.faeton.words.v)

sorted.villamediana.faeton.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.villamediana.faeton.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.villamediana.faeton.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.villamediana.faeton.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.villamediana.faeton.rel.freqs.t <- round(sorted.villamediana.faeton.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.villamediana.faeton.rel.freqs.t[1:25], file = "results/tabular/Villamediana_faeton.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.villamediana.faeton.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.villamediana.faeton.rel.freqs.t <- round(sorted.villamediana.faeton.rel.freqs.t)