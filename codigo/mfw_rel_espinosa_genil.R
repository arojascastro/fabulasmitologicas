setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Espinosa_genil.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
espinosa.genil..words.l <- strsplit(poem.lower.v, "\\W")
espinosa.genil..words.v <- unlist(espinosa.genil..words.l)
not.blanks.v <- which(espinosa.genil..words.v!="")
espinosa.genil..words.v <- espinosa.genil..words.v[not.blanks.v]
espinosa.genil.freqs.t <- table(espinosa.genil..words.v)
sorted.espinosa.genil.freqs.t <- sort(espinosa.genil.freqs.t, decreasing = TRUE)
sorted.espinosa.genil.rel.freqs.t <- 100*(sorted.espinosa.genil.freqs.t/sum(sorted.espinosa.genil.freqs.t))

length(espinosa.genil..words.v)

sorted.espinosa.genil.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.espinosa.genil.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.espinosa.genil.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.espinosa.genil.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.espinosa.genil.rel.freqs.t <- round(sorted.espinosa.genil.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.espinosa.genil.rel.freqs.t[1:25], file = "results/tabular/Espinosa_genil.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.espinosa.genil.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.espinosa.genil.rel.freqs.t <- round(sorted.espinosa.genil.rel.freqs.t)