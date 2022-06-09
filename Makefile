DEPLOY = afm@brillig.org:public_html/ortocomputer.com/
BUILDDIR = _site/
DIST = dist/

.PHONY: deploy all clean

clean:
	rm -rf "$(BUILDDIR)"
	rm -rf "$(DIST)"

_site:
	bundle exec jekyll build

dist: _site
	mkdir -p "$(DIST)"
	bundle exec jekyll serve -B
	cd "$(DIST)"; wget --convert-links --no-host-directories -r http://127.0.0.1:4000/
	pkill -f jekyll

all: deploy

deploy: dist
	rsync -av --delete "$(DIST)" "$(DEPLOY)"