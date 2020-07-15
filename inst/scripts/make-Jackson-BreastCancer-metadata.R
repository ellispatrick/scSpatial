FUN <- function(...) {
    data.frame(
        Title="Jackson Breast Cancer",
        Description=sprintf("Selected Breast Cancer IMC %s from Jackson et al",
                            c("images", "masks", "single cell data")),
        BiocVersion="3.11",
        Maintainer="Jana Fischer <jana.fischer@uzh.ch>",
        Genome="NA",
        SourceType="Zip",
        SourceUrl="https://zenodo.org/record/3518284/files/OMEandSingleCellMasks.zip?download=1, https://zenodo.org/record/3518284/files/SingleCell_and_Metadata.zip?download=1",
        SourceVersion="Jul 15 2020",
        RDataPath=file.path("scCyto", "Jackson-BreastCancer", "0.0",
                            c("images.rds", "masks.rds", "singleCellData.rds")),
        TaxonomyId="NA",
        Coordinate_1_based=c("NA", "NA", T),
        Species="Homo sapiens",
        DataProvider="University Hospital Basel",
        RDataClass=c("CytoImageList", "CytoImageList", "data.frame"), # TODO : is this true?
        DispatchClass="Rds",
        biocViews="NA"
    )
}

write.csv(file="../extdata/metadata-Jackson-BreastCancer.csv",
    FUN(),
    row.names=FALSE)
