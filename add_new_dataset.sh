authorname=$1
biosystem=$2
current_version=$3

RmdReport="./inst/scripts/make-$authorname-$biosystem-data.Rmd"
metadataScript="./inst/scripts/make-$authorname-$biosystem-metadata.R"
downloadScript="./R/${authorname}${biosystem}Data.R"

remove_and_replace() {
	rm -f $1

	case $1 in
	$RmdReport)
		create_Rmd
		;;
	$metadataScript)
		create_metadataScript
		;;
	$downloadScript)
		create_downloadScript
		;;
	*)
		echo "-add_new_dataset: $1 not understood as valid target file" 1>&2
		exit 64
	esac
}

make_dirs() {
	mkdir --parents ./inst/scripts
	mkdir --parents ./R
}

# To create the RMD report template
create_Rmd() {
	local template_str=$(cat ./templates/TemplateMake.txt)
	create_file_from_template $RmdReport "$template_str"
}

# To create the metadata script template
create_metadataScript() {
	local template_str=$(cat ./templates/TemplateMetadata.txt)
	create_file_from_template $metadataScript "$template_str"
}

# To create the R downloader script
create_downloadScript() {
	local template_str=$(cat ./templates/TemplateData.txt)
	create_file_from_template $downloadScript "$template_str"
}

create_file_from_template() {
	local file_location=$1
	local template_string=$2
	eval "echo \"${template_string}\"" >> $file_location
}

# Ensures that ./inst/scripts and ./R both exist
make_dirs

# If any of the files exist, warn the user and ask if they want to overwrite or ignore
if [[ -e $RmdReport || -e metadataScript || -e downloadScript ]]; then
	read -p "The files $RmdReport, $metadataScript, $downloadScript already exist.
	Do you want to override them? (y/n)"
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		echo "Overwriting all files!"
		remove_and_replace $RmdReport
		remove_and_replace $metadataScript
		remove_and_replace $downloadScript
	fi
else
	create_Rmd
	create_metadataScript
	create_downloadScript
fi
