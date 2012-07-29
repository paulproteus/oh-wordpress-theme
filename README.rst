This is a small bit of code that takes an input bit of HTML and
generates a WordPress theme. You can use it to generate a WordPress
theme.

Overview
========

Here's the basic idea:

You provide an input/index.html file. The file contains replaceable
bits like like "WORDPRESS_MAIN". Then you run 'make'.

This code will process that file and, for each magic word as defined
in the replaceable/ directory, replace the magic word with a little
bit of PHP code.

It will then save the resulting WordPress theme file in
output/index.php.

(Note: To make it generate a style.css file, which is a required part
of every WordPress theme, you need to configure it. To do that,
copy "theme.cfg.EXAMPLE" to "theme.cfg" and 'make' again.)

Then you can copy the contents of output/ into right path for
your WordPress site.

Status
======

Right now, the project is a mostly-functional hack.

Origin
======

This project began because Asheesh Laroia kept having to fix the
OpenHatch.org blog when the OpenHatch main site design changed. The
idea is to store a stub of a WordPress theme as a Django template,
then use this external software to convert that stub into an actual
WordPress theme.

License and copyright
=====================

Permission to use code in this project is granted under the terms of
the Apache License 2.0.

Copyright is owned by Asheesh Laroia, and any other contributors as
indicated by the output of 'git log' (look at the Author field).
