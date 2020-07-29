LinMelanomaData <- function(...) {
    version <- "1.0"
    sc <- .create_se(file.path("Lin-Melanoma", version),
                     spatialCoords = c("x", "y"),
                     intensityString="protein_",
                     morphologyString="shape_",
                     cellIDString="cellID",
                     imageIDString="imageID")
    sc
}
