all: output output/style.css

output:
	mkdir -p output

output/style.css: theme.cfg
	python morphology/generate_css.py > output/style.css.tmp
	mv output/style.css.tmp output/style.css
