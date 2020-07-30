HafnerBreastCancerData <- function(...) {
    version <- "1.0"
    sce <- .create_se(file.path("Hafner-BreastCancer", version),
                      intensityString="intensity_",
                      morphologyString="shape_",
                      imageIDString="imageID")
    sce
}
