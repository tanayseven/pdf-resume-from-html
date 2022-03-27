ICONS_TO_CONVERT_LIST:=$(patsubst raw-icons/%.svg, icons/%.png, $(shell find raw-icons/ -name "*.svg"))

.PHONY: build
build: $(ICONS_TO_CONVERT_LIST)
	chromium --headless --disable-gpu --print-to-pdf=resume.pdf index.html

./icons/%.png: ./raw-icons/%.svg
	inkscape $^ -o $@

.PHONY: watch-build
watch-build:
	watch chromium --headless --disable-gpu --print-to-pdf=resume.pdf index.html

# TODO add a check to see if all necessary packages are installed
#.PHONY:
#.ONESHELL:
#is-weasyprint-installed?:
#	which weasyprint
#