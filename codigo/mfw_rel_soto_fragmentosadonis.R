setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Soto_fragmentosadonis.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
soto.fragmentosadonis.words.l <- strsplit(poem.lower.v, "\\W")
soto.fragmentosadonis.words.v <- unlist(soto.fragmentosadonis.words.l)
not.blanks.v <- which(soto.fragmentosadonis.words.v!="")
soto.fragmentosadonis.words.v <- soto.fragmentosadonis.words.v[not.blanks.v]
soto.fragmentosadonis.freqs.t <- table(soto.fragmentosadonis.words.v)
sorted.soto.fragmentosadonis.freqs.t <- sort(soto.fragmentosadonis.freqs.t, decreasing = TRUE)
sorted.soto.fragmentosadonis.rel.freqs.t <- 100*(sorted.soto.fragmentosadonis.freqs.t/sum(sorted.soto.fragmentosadonis.freqs.t))

length(soto.fragmentosadonis.words.v)

sorted.soto.fragmentosadonis.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.soto.fragmentosadonis.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.soto.fragmentosadonis.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.soto.fragmentosadonis.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.soto.fragmentosadonis.rel.freqs.t <- round(sorted.soto.fragmentosadonis.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.soto.fragmentosadonis.rel.freqs.t[1:25], file = "results/tabular/Soto_fragmentosadonis.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.soto.fragmentosadonis.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.soto.fragmentosadonis.rel.freqs.t <- round(sorted.soto.fragmentosadonis.rel.freqs.t)