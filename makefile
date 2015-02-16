# compilers
LC=latex
DVI2PS=dvips
PS2PDF=ps2pdf
#IO
TMP_DIR=temp
IN=main
OUT=thesis
# options I'll pass to the compiler.
CFLAGS=-c -Wall

all: thesis

thesis: $(IN).dvi
	cd $(TMP_DIR) && $(DVI2PS) $(IN).dvi && $(PS2PDF) $(IN).ps ../$(OUT).pdf

$(IN).dvi: $(IN).tex
	$(LC) -output-directory $(TMP_DIR) $(IN).tex

clean:
	rm $(OUT).pdf
	rm $(TMP_DIR)/*
