setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Polo_fabpansiringa.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
polo.fabpansiringa.words.l <- strsplit(poem.lower.v, "\\W")
polo.fabpansiringa.words.v <- unlist(polo.fabpansiringa.words.l)
not.blanks.v <- which(polo.fabpansiringa.words.v!="")
polo.fabpansiringa.words.v <- polo.fabpansiringa.words.v[not.blanks.v]
polo.fabpansiringa.freqs.t <- table(polo.fabpansiringa.words.v)
sorted.polo.fabpansiringa.freqs.t <- sort(polo.fabpansiringa.freqs.t, decreasing = TRUE)
sorted.polo.fabpansiringa.rel.freqs.t <- 100*(sorted.polo.fabpansiringa.freqs.t/sum(sorted.polo.fabpansiringa.freqs.t))

length(polo.fabpansiringa.words.v)

sorted.polo.fabpansiringa.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.polo.fabpansiringa.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.polo.fabpansiringa.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.polo.fabpansiringa.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.polo.fabpansiringa.rel.freqs.t <- round(sorted.polo.fabpansiringa.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.polo.fabpansiringa.rel.freqs.t[1:25], file = "results/tabular/Polo_fabpansiringa.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.polo.fabpansiringa.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.polo.fabpansiringa.rel.freqs.t <- round(sorted.polo.fabpansiringa.rel.freqs.t)