#' @importFrom ExperimentHub ExperimentHub
#' @importFrom spicyR SegmentedCells
.create_se <- function(dataset, hub=ExperimentHub(), intensityPattern=NULL, intensityString="intensity_", ...) {

  host <- file.path("scCyto", dataset)
  single_cell_path <- file.path(host, "spatialCellData.rds")
  cellData <- read_rds(single_cell_path)

  # This functionality is planned for a future version of spicyR
  if (!is.null(intensityPattern)) {

    warning("This feature is not implemented yet, as it relies on a future version of spicyR. See #5 of spicyR for more information.")

    if (F) { # TODO : remove, once spicyR has been updated

      # Warn the user if they're overspecifying which columns correspond to intensity measures
      if (intensityString != "intensity_") {
        warning("You've defined both `intensityString` and `intensityPrefix`. Ignoring `intensityString`.")
      }
      intensityString <- colnames(cellData)[grep(intensityPrefix, colnames(cellData))]
    }
  }

  SegmentedCells(cellData, intensityString = intensityString, ...)
}
