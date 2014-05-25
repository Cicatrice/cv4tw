cv4tw
=====

LaTeX CV class, with assets, social networks, and customizable styles.

Available themes
----------------
* [`sharp`](examples/sample-jules-verne-sharp.pdf): Elegant header, to introduce a long resume 
* [`simple`](examples/sample-jules-verne-simple.pdf): A classic format, perfect for resume with short contacts details
* [`compact`](examples/sample-jules-verne-compact.pdf): design for short CV (1 page), with a left column showing your picture and contact details 

[Have a look to the themes matrix !](http://cv4tw.6kt.eu/themes-matrix.html)

Available schemes
-----------------
* `celadon`
* `tan`
* `gray`
* `purple`
* `teal`
* `minuit`
* Default theme is red
* If you want a custom scheme, add the following lines right before `\usetheme` statement
```tex
\definecolorifnotdef{contrastmain}{RGB}{219,255,242}  % Main theme color in contrast mode
\definecolorifnotdef{main}{RGB}{60,76,70}             % Main theme color
\definecolorifnotdef{soft}{RGB}{50,64,58}             % Soft color, for title
```

Quick install guide
===================

on Fedora
---------
* Run the following command
```bash
sudo yum install texlive texlive-xetex texlive-newenviron texlive-xetex-def texlive-xstring texlive-lastpage texlive-libertine texlive-euenc texlive-pbox texlive-needspace texlive-fontawesome fontawesome-fonts texlive-realboxes
```

on Debian-based
---------------
* Run the following command
```bash
sudo apt-get install texlive-latex-extra texlive-xetex texlive-fonts-extra fonts-linuxlibertine
```

on Windows
----------
* Install MikTeX
* All depedencies might be installed automatically on LaTeX processing

Compile example
===============
* go in [`examples`](examples) folder
* on Windows, edit Makefile, and replace `TEXINPUTS=.:..:` with `TEXINPUTS=..`
* run: 
```bash
make clean all
```
* default theme is [`sharp`](examples/sample-jules-verne-sharp.pdf). To use another exemple, run the following command:
```bash
CVTHEME=compact make clean all
```

Go further with customization
=============================
If you need some changes in themes, you can have a look to [this guide](CUSTOMIZE.md).

Change logs
===========
* 2014-05-25: even more documentation
* 2014-05-21: quick install guide, custom fields added
* 2014-01-19: working version, lack a bit of documentation
* 2014-01-08: alpha version, almost working

