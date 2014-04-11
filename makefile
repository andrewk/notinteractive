SASSC     = sass --style compact
SASSDIR   = assets/css
CSSDIR    = site/css
SASSINC   = $(SASSDIR)
NODEBIN   = node_modules/.bin
BROWSERS  = "last 2 version, firefox esr, opera 12.1, android 4, explorer 9"

build: content sass autoprefix

content:
	node build.js

sass:
	$(SASSC) -C $(foreach d, $(SASSINC), -I$d) --update $(SASSDIR):$(CSSDIR)

install:
	npm install
	brew install sassc

autoprefix:
	@$(NODEBIN)/autoprefixer -b $(BROWSERS) $(CSSDIR)/*.css

watch:
	$(SASSC) $(foreach d, $(SASSINC), -I$d) --watch $(SASSDIR):$(CSSDIR)

clean:
	rm -rf node_modules
	rm -rf site/words/
	rm -rf site/css/
	rm -rf .sass-cache

.PHONY: build content sass install autoprefix watch clean
