FUN <- function(...) {

    # FOR INFORMATION ON WHAT SHOULD BE INCLUED IN THIS FILE, TYPE
    # ?ExperimentHubData::makeExperimentHubMetadata

    data.frame(
        Title="Damond Diabetes",
        Description= "We used imaging mass cytometry to simultaneously image 37 biomarkers with single-cell and spatial resolution in pancreas sections from 12 human donors at different stages of type 1 diabetes.",
        BiocVersion="3.11",
        Maintainer="Nicolas Damond <nicolas.damond@uzh.ch>",
        Genome=NA,
        SourceType="ZIP",
        SourceUrl=c("https://data.mendeley.com/datasets/cydmwsfztj/2/files/4473bd0c-b617-4c79-8253-8d61fbe4e8e8/Cells.zip?dl=1",
                    "https://data.mendeley.com/datasets/cydmwsfztj/2/files/59e8da72-5bfe-4289-b95b-28348a6e1222/CellTypes.zip?dl=1",
                    "https://data.mendeley.com/datasets/cydmwsfztj/2/files/b0405cb9-2816-4bc9-9baa-16d0f509d873/Metadata.csv?dl=1"),
        SourceVersion="1.0",
        RDataPath=file.path("scCyto", "Damond-Diabetes",
                            "1.0", "singleCellData.rds"),
        TaxonomyId="NA",
        Coordinate_1_based=T,
        Species= "Homo sapiens",
        DataProvider="Bodenmiller Group",
        RDataClass="data.frame",
        DispatchClass="Rds",
        biocViews="NA"
    )
}

write.csv(file="../extdata/metadata-Damond-Diabetes.csv",
    FUN(),
    row.names=FALSE)
