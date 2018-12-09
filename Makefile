
all: plots/*.md

images/*.png: code/rplots/*.r
	cd code/rplots; Rscript *.r
	cd code/rplots; mv *.png ../../images/

_data/plots.yml: code/scripts/plots_yml_generator.R
	cd code/scripts; Rscript plots_yml_generator.R

plots/*.md: code/scripts/md_files_generator.R
	cd code/scripts; Rscript md_files_generator.R