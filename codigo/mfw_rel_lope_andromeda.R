setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Lope_andromeda.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
lope.andromeda.words.l <- strsplit(poem.lower.v, "\\W")
lope.andromeda.words.v <- unlist(lope.andromeda.words.l)
not.blanks.v <- which(lope.andromeda.words.v!="")
lope.andromeda.words.v <- lope.andromeda.words.v[not.blanks.v]
lope.andromeda.freqs.t <- table(lope.andromeda.words.v)
sorted.lope.andromeda.freqs.t <- sort(lope.andromeda.freqs.t, decreasing = TRUE)
sorted.lope.andromeda.rel.freqs.t <- 100*(sorted.lope.andromeda.freqs.t/sum(sorted.lope.andromeda.freqs.t))

length(lope.andromeda.words.v)

sorted.lope.andromeda.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.lope.andromeda.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.lope.andromeda.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.lope.andromeda.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.lope.andromeda.rel.freqs.t <- round(sorted.lope.andromeda.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.lope.andromeda.rel.freqs.t[1:25], file = "results/tabular/Lope_andromeda.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.lope.andromeda.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.lope.andromeda.rel.freqs.t <- round(sorted.lope.andromeda.rel.freqs.t)