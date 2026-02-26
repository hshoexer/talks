DIA != ls *.dia
SVG = ${DIA:S/.dia/.svg/}

.SUFFIXES: .dia .svg

all: ${SVG}

.dia.svg:
	dia -e $@ $<

tgz: ${SVG}
	tar -czvf svg.tgz ${SVG}

clean:
	rm -f *.svg
	rm -f svg.tgz
