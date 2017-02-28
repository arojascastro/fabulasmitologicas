setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Gongora_piramotisbe.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
gongora.piramotisbe.words.l <- strsplit(poem.lower.v, "\\W")
gongora.piramotisbe.words.v <- unlist(gongora.piramotisbe.words.l)
not.blanks.v <- which(gongora.piramotisbe.words.v!="")
gongora.piramotisbe.words.v <- gongora.piramotisbe.words.v[not.blanks.v]
gongora.piramotisbe.freqs.t <- table(gongora.piramotisbe.words.v)
sorted.gongora.piramotisbe.freqs.t <- sort(gongora.piramotisbe.freqs.t, decreasing = TRUE)
sorted.gongora.piramotisbe.rel.freqs.t <- 100*(sorted.gongora.piramotisbe.freqs.t/sum(sorted.gongora.piramotisbe.freqs.t))

sorted.gongora.piramotisbe.rel.freqs.t[100:200]

length(gongora.piramotisbe.words.v)

sorted.gongora.piramotisbe.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.gongora.piramotisbe.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.gongora.piramotisbe.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.gongora.piramotisbe.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.gongora.piramotisbe.rel.freqs.t <- round(sorted.gongora.piramotisbe.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.gongora.piramotisbe.rel.freqs.t[1:25], file = "results/tabular/Gongora_piramotisbe.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.gongora.piramotisbe.rel.freqs.t["ya"]

# redondea las frecuencias absolutas
rounded.sorted.gongora.piramotisbe.rel.freqs.t <- round(sorted.gongora.piramotisbe.rel.freqs.t)