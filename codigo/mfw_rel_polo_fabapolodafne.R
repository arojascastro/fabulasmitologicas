setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Polo_fabapolodafne.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
polo.fabapolodafne.words.l <- strsplit(poem.lower.v, "\\W")
polo.fabapolodafne.words.v <- unlist(polo.fabapolodafne.words.l)
not.blanks.v <- which(polo.fabapolodafne.words.v!="")
polo.fabapolodafne.words.v <- polo.fabapolodafne.words.v[not.blanks.v]
polo.fabapolodafne.freqs.t <- table(polo.fabapolodafne.words.v)
sorted.polo.fabapolodafne.freqs.t <- sort(polo.fabapolodafne.freqs.t, decreasing = TRUE)
sorted.polo.fabapolodafne.rel.freqs.t <- 100*(sorted.polo.fabapolodafne.freqs.t/sum(sorted.polo.fabapolodafne.freqs.t))

length(polo.fabapolodafne.words.v)

sorted.polo.fabapolodafne.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.polo.fabapolodafne.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.polo.fabapolodafne.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.polo.fabapolodafne.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.polo.fabapolodafne.rel.freqs.t <- round(sorted.polo.fabapolodafne.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.polo.fabapolodafne.rel.freqs.t[1:25], file = "results/tabular/Polo_fabapolodafne.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.polo.fabapolodafne.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.polo.fabapolodafne.rel.freqs.t <- round(sorted.polo.fabapolodafne.rel.freqs.t)