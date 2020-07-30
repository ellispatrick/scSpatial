# scCyto
Tool for accessing pre-processed IMC and Opal images with single-cell RNAseq data.

## Uploading Data
Use the `add_new_dataset.sh` script to add the files necessary for creating a new dataset:

```shell
$ authorname=Jackson
$ biosystem=BreastCancer
$ version="1.0"
$ bash add_new_dataset.sh $authorname $biosystem $version
```

The script will warn if the user is attempting to overwrtie an existing set of files and ask for confirmation.
