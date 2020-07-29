#' @importFrom ExperimentHub ExperimentHub
#' @importFrom spicyR SegmentedCells
.create_se <- function(dataset, hub=ExperimentHub(), ...) {

  host <- file.path("scCyto", dataset)
  single_cell_path <- file.path(host, "spatialCellData.rds")

  cellData <- read_rds(single_cell_path)
  SegmentedCells(cellData, ...)
}
