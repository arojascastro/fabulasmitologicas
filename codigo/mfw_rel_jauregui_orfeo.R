setwd("~/Documents/articulos/fabula_mitologica")
text.v <-scan("data/txt/Jauregui_orfeo.txt", what = "character", sep="\n")
poem.lower.v <- tolower(text.v)
jauregui.orfeo.words.l <- strsplit(poem.lower.v, "\\W")
jauregui.orfeo.words.v <- unlist(jauregui.orfeo.words.l)
not.blanks.v <- which(jauregui.orfeo.words.v!="")
jauregui.orfeo.words.v <- jauregui.orfeo.words.v[not.blanks.v]
jauregui.orfeo.freqs.t <- table(jauregui.orfeo.words.v)
sorted.jauregui.orfeo.freqs.t <- sort(jauregui.orfeo.freqs.t, decreasing = TRUE)
sorted.jauregui.orfeo.rel.freqs.t <- 100*(sorted.jauregui.orfeo.freqs.t/sum(sorted.jauregui.orfeo.freqs.t))

length(jauregui.orfeo.words.v)

sorted.jauregui.orfeo.rel.freqs.t

# crea gráfico con las frecuencias relativas absolutas -- 10 palabras más frecuentes en total
plot(sorted.jauregui.orfeo.freqs.t[1:25])

#crea gráfico con las frecuencias relativas
plot(sorted.jauregui.orfeo.rel.freqs.t[1:25], type="b", xlab="10 palabras más frecuentes", ylab="Porcentaje", xaxt="n")
axis(1,1:25, labels=names(sorted.jauregui.orfeo.rel.freqs.t[1:25]))

# redondea las frecuencias absolutas
rounded.sorted.jauregui.orfeo.rel.freqs.t <- round(sorted.jauregui.orfeo.rel.freqs.t)

# exporta los resultados a un archivo csv
write.csv(sorted.jauregui.orfeo.rel.freqs.t[1:25], file = "results/tabular/Jauregui_orfeo.csv")

# obtiene frecuencia relativa de una determinada palabra
sorted.jauregui.orfeo.rel.freqs.t["soles"]

# redondea las frecuencias absolutas
rounded.sorted.jauregui.orfeo.rel.freqs.t <- round(sorted.jauregui.orfeo.rel.freqs.t)