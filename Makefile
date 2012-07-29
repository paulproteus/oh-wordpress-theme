all: output output/index.php output/style.css

output:
	mkdir -p output

output/style.css: theme.cfg
	python morphology/generate_css.py > output/style.css.tmp
	mv output/style.css.tmp output/style.css

output/index.php: input/index.html
	python morphology/generate_index_php.py input/index.html > output/index.php.tmp
	mv output/index.php.tmp output/index.php
