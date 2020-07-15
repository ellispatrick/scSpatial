library(readr)
library(cytomapper)

PATTERN = "BaselTMA_SP42_.*"
JACKSON_PATH = "/dskh/nobackup/biostat/datasets/spatial/Jackson"
STAINING_PATH = file.path(JACKSON_PATH, "Data_publication", "Basel_Zuri_StainingPanel.csv")
SC_PATH <- file.path(JACKSON_PATH, "Data_publication", "BaselTMA", "SC_dat.csv")
OME_PATH = file.path(JACKSON_PATH, "OMEnMasks", "ome")
MASK_PATH = file.path(JACKSON_PATH, "OMEnMasks", "Basel_Zuri_masks")

# Get the staining panel
staining_panel= read_csv(STAINING_PATH)
staining_panel$FullStack = factor(staining_panel$FullStack)
staining_panel <- staining_panel[!is.na(staining_panel$FullStack),]

channels = 1:52
names(channels)[staining_panel$FullStack] = staining_panel$Target
names(channels) <- sub("[.]", "_", make.names(names(channels), unique=T))

# Get the images (but not all of them - there are too many)
images <- loadImages(OME_PATH, pattern=PATTERN)
channelNames(images) <- names(channels)

# Get the masks
masks <- loadImages(MASK_PATH, pattern=PATTERN)

# Single Cell Information
scDat <- read_csv(SC_PATH)
scDat <- scDat[grepl(PATTERN, scDat$core),]
