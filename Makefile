all: output output/index.php output/style.css output/functions.php output/comments.php

output:
	mkdir -p output

output/style.css: theme.cfg
	python morphology/generate_css.py > output/style.css.tmp
	mv output/style.css.tmp output/style.css

output/index.php: morphology/generate_index_php.py input/index.html replacements/*
	python morphology/generate_index_php.py input/index.html > output/index.php.tmp
	mv output/index.php.tmp output/index.php

output/functions.php: morphology/static/functions.php
	cp morphology/static/functions.php output/functions.php

output/comments.php: morphology/static/comments.php
	cp morphology/static/comments.php output/comments.php
