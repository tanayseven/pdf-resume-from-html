ICONS_TO_CONVERT_LIST:=$(patsubst raw-icons/%.svg, icons/%.png, $(shell find raw-icons/ -name "*.svg"))

.PHONY: build
build: $(ICONS_TO_CONVERT_LIST)
	weasyprint index.html resume.pdf

./icons/%.png: ./raw-icons/%.svg
	inkscape $^ -o $@

.PHONY: watch-build
watch-build:
	watch weasyprint index.html resume.pdf

# TODO add a check to see if all necessary packages are installed
#.PHONY:
#.ONESHELL:
#is-weasyprint-installed?:
#	which weasyprint
#