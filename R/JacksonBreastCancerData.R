JacksonBreastCancerData <- function(pattern="BaselTMA_SP43_9*.tiff") {
    version <- "0.0"
    se <- .create_se(file.path("Jackson-BreastCancer", version), has.rowdata=FALSE, pattern=pattern)
    se
}
