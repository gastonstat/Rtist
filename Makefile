# source R script files
rfiles = $(wildcard ls code/rplots/*.r)
# get just the name (no extension)
files = $(shell ls code/rplots/*.r | xargs -n 1 basename)

#imagesdir = images
#files = $(patsubst %.r,%,$(rfiles))
pngs = $(patsubst %.r, %.png, $(files))
mds = $(patsubst %.r, %.md, $(files))


all: images/$(pngs) _data/plots.yml


images/$(pngs): $(rfiles)
	cd code/rplots; Rscript *.r
	cd code/rplots; mv *.png ../../images/


_data/plots.yml: code/scripts/plots_yml_generator.R
	cd code/scripts; Rscript plots_yml_generator.R
	cd code/scripts; Rscript md_files_generator.R


## the following rule does not make sense bc it iterates
## over all mds files
#plots/$(mds): code/scripts/md_files_generator.R
#	cd code/scripts; Rscript md_files_generator.R