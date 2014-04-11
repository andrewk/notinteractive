SASSC     	:= sass --style compact
CSS_ASSETS	:= assets/css
CSS_DEST  	:= site/css
IMG_SRC     := assets/img
IMG_DEST		:= site/img
COMPILED_CSS = $(shell find $(CSS_DEST) -type f -name '*.css')
NODEBIN   	:= node_modules/.bin
SASSFILES   := $(shell find $(CSS_ASSETS) -name '*.scss' | grep -v '/_')
BROWSERS  	:= "last 2 version, firefox esr, opera 12.1, android 4, explorer 9"

build: content css autoprefix

content:
	node build.js

css: $(patsubst $(CSS_ASSETS)/%.scss, $(CSS_DEST)/%.css, $(SASSFILES))

$(CSS_DEST)/%.css: $(CSS_ASSETS)/%.scss
	@echo compiling $@
	@mkdir -p $(shell dirname $@)
	@$(SASSC) -C $(foreach d, $(CSS_ASSETS), -I$d) $? $@

install:
	npm install
	brew install sassc

# Auto-prefix CSS files
autoprefix: $(COMPILED_CSS)
	@$(NODEBIN)/autoprefixer -b $(BROWSERS) $(CSS_DEST)/*.css

watch:
	$(SASSC) -I $(CSS_ASSETS) --watch $(CSS_ASSETS):$(CSS_DEST)

clean:
	rm -rf node_modules
	rm -rf site/*
	rm -rf .sass-cache

.PHONY: build content css img install autoprefix watch clean
