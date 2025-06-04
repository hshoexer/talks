DIA := $(wildcard *.dia)
SVG := $(addsuffix .svg, $(basename $(DIA)))

all: ${SVG}

%.svg: %.dia
	dia -e $@ $<

svg.tgz: ${SVG}
	tar -czvf $@ ${SVG}

clean:
	rm -f *.svg
	rm -f svg.tgz

.PHONY: svg clean
