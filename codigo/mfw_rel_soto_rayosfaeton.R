setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Soto_rayosfaeton.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
soto.rayosfaeton.words.l <- strsplit(poem.lower.v, "\\W")
soto.rayosfaeton.words.v <- unlist(soto.rayosfaeton.words.l)
not.blanks.v <- which(soto.rayosfaeton.words.v!="")
soto.rayosfaeton.words.v <- soto.rayosfaeton.words.v[not.blanks.v]
soto.rayosfaeton.freqs.t <- table(soto.rayosfaeton.words.v)
sorted.soto.rayosfaeton.freqs.t <- sort(soto.rayosfaeton.freqs.t, decreasing = TRUE)
sorted.soto.rayosfaeton.rel.freqs.t <- 100*(sorted.soto.rayosfaeton.freqs.t/sum(sorted.soto.rayosfaeton.freqs.t))

length(soto.rayosfaeton.words.v)

sorted.soto.rayosfaeton.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.soto.rayosfaeton.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.soto.rayosfaeton.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.soto.rayosfaeton.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.soto.rayosfaeton.rel.freqs.t <- round(sorted.soto.rayosfaeton.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.soto.rayosfaeton.rel.freqs.t[1:25], file = "results/tabular/Soto_rayosfaeton.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.soto.rayosfaeton.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.soto.rayosfaeton.rel.freqs.t <- round(sorted.soto.rayosfaeton.rel.freqs.t)