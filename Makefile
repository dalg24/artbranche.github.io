RST_SOURCE:=${wildcard *rst}
HTML_SOURCE:=$(addprefix html/,$(notdir $(RST_SOURCE:.rst=.html)))

RST2HTML=rst2html-2.7.py

all: ${HTML_SOURCE}
	cp html/artbranche.html index.html


html/%.html: %.rst
	${RST2HTML} $< $@
