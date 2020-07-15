#' @importFrom ExperimentHub ExperimentHub
#' @importFrom SingleCellExperiment SingleCellExperiment
#' @importFrom cytomapper CytoImageList
#' @importFrom spicyR SegmentedCells
.create_se <- function(dataset, hub=ExperimentHub(), pattern=NULL) {

  host <- file.path("scCyto", dataset)

  # 1. Get the SingleCellExperiment, if it exists

  # 2. Get the CytoImageList

  # 3. Get the Segmented Cell Mask
}
