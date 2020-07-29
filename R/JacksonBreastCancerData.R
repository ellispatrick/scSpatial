JacksonBreastCancerData <- function() {
    version <- "1.0"
    se <- .create_se(file.path("Jackson-BreastCancer", version), has.rowdata=FALSE)
    se
}
