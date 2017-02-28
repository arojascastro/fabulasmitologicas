setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Bocangel_leandro.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
bocangel.leandro.words.l <- strsplit(poem.lower.v, "\\W")
bocangel.leandro.words.v <- unlist(bocangel.leandro.words.l)
not.blanks.v <- which(bocangel.leandro.words.v!="")
bocangel.leandro.words.v <- bocangel.leandro.words.v[not.blanks.v]
bocangel.leandro.freqs.t <- table(bocangel.leandro.words.v)
sorted.bocangel.leandro.freqs.t <- sort(bocangel.leandro.freqs.t, decreasing = TRUE)
sorted.bocangel.leandro.rel.freqs.t <- 100*(sorted.bocangel.leandro.freqs.t/sum(sorted.bocangel.leandro.freqs.t))

length(bocangel.leandro.words.v)

sorted.bocangel.leandro.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.bocangel.leandro.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.bocangel.leandro.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.bocangel.leandro.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.bocangel.leandro.rel.freqs.t <- round(sorted.bocangel.leandro.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.bocangel.leandro.rel.freqs.t[1:25], file = "results/tabular/Bocangel_leandro.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.bocangel.leandro.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.bocangel.leandro.rel.freqs.t <- round(sorted.bocangel.leandro.rel.freqs.t)