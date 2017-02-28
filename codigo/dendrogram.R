source("code/functions.r")

input.dir <- "data/tei"

files.v <- dir(path=input.dir, pattern=".xml")

length(files.v)

file.path(input.dir, files.v)

i <- 1

library(XML)

book.freqs.l <- list()
  for (i in 1:length(files.v)){
  doc.object <- xmlTreeParse(file.path(input.dir, files.v[i]), 
                           useInternalNodes = TRUE)
  worddata <- getTEIWordTableList(doc.object)
  book.freqs.l[[files.v[i]]] <- worddata
  }

freqs.l <- mapply(data.frame, ID=seq_along(book.freqs.l),
                  book.freqs.l, SIMPLIFY = FALSE,
                  MoreArgs = list(stringsAsFactors=FALSE))

freqs.df <- do.call(rbind, freqs.l)

result <- xtabs(Freq ~ ID+Var1, data=freqs.df)

final.m <- apply(result, 2, as.numeric)

smaller.m <- final.m[,apply(final.m,2,mean)>=.25]

dm <- dist(smaller.m)
cluster <- hclust(dm)
cluster$labels <- names(book.freqs.l)
plot(cluster)
