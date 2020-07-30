FUN <- function(...) {

    # FOR INFORMATION ON WHAT SHOULD BE INCLUED IN THIS FILE, TYPE
    # ?ExperimentHubData::makeExperimentHubMetadata

    data.frame(
        Title="Hafner Breast Cancer",
        Description= "MCF 10A breast cell line (normal breast epithelial cells) was plated in 96-well plates and treated with different doses of one of eight small molecule perturbagens for up to 72 hr before being fixed and subjected to seven cycles of CycIF staining according to the protocol described below.",
        BiocVersion="3.11",
        Maintainer="celsomilne@gmail.com",
        Genome="NA",
        SourceType="ZIP",
        SourceUrl="http://lincs.hms.harvard.edu/data/HMS_Dataset_20308.zip",
        SourceVersion="1.0",
        RDataPath=file.path("scCyto", "Hafner-BreastCancer",
                            "1.0", "singleCellData.rds"),
        TaxonomyId="NA",
        Coordinate_1_based=T,
        Species="Homo sapiens",
        DataProvider="Harvard Medical School",
        RDataClass="data.frame",
        DispatchClass="Rds",
        biocViews="NA"
    )
}

write.csv(file="../extdata/metadata-Hafner-BreastCancer.csv",
    FUN(),
    row.names=FALSE)
