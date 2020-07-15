FUN <- function(...) {
    data.frame(
        ...
    )
}

write.csv(file="../extdata/metadata-Jackson-BreastCancer.csv",
    rbind(FUN(...), FUN(...)),
    row.names=FALSE)
