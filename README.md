# scSpatial
Tool for accessing curated pre-processed segmented spatial cytometry datasets. These data measure the spatial coordinates of single cells and will likely have corresponding protein/rna abundances, morphology measurements and cell masks. Relevent technologies include IMC, CODEX, seqFISH and CycIF.

## Uploading Data
New data is gradually being added. Our goal is to make this library the standard for accessing high-quality, spatially oriented single-cell data. If you have a dataset that you want to add, it must be publicly available (i.e. on Mendeley). Then, fork the github repository and create a new branch:

```shell
git clone https://github.com/<github_username>/scSpatial
cd scSpatial
```
Use the `add_new_dataset.sh` script to add the files necessary for creating a new dataset:

```shell
authorname="<author's name>"
biosystem="<one-word e.g. BreastCancer or Melanoma or Diabetes>"
version="1.0"
git checkout -b ${authorname}-${biosystem}
bash add_new_dataset.sh $authorname $biosystem $version
```

The script will warn if the user is attempting to overwrtie an existing set of files and ask for confirmation.
