.SUFFIXES: .gif .png

# convert all .gif files to .png files, using the first frame only

png: $(patsubst %.gif,%.png,$(wildcard *.gif))

.gif.png:
	convert $<[0] $@
