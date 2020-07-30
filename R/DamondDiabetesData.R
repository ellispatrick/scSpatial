DamondDiabetesData <- function(...) {
    version <- "1.0"
    sce <- .create_se(file.path("Damond-Diabetes", version))
    sce
}
