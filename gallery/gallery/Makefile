ROOT := $(shell git rev-parse --show-toplevel)
FLUTTER := $(shell which flutter)
FLUTTER_BIN_DIR := $(shell dirname $(FLUTTER))
FLUTTER_DIR := $(FLUTTER_BIN_DIR:/bin=)
DART := $(FLUTTER_BIN_DIR)/cache/dart-sdk/bin/dart

.PHONY: analyze
analyze:
	$(FLUTTER) analyze

.PHONY: format
format:
	$(FLUTTER) format .

.PHONY: test
test:
	$(FLUTTER) test

.PHONY: build-web
build-web:
	$(FLUTTER) build web

.PHONY: fetch-master
fetch-master:
	$(shell git fetch origin master)

.PHONY: master-branch-check
master-branch-check: fetch-master
  ifneq ($(shell git rev-parse --abbrev-ref HEAD),master)
		$(error Not on master branch, please checkout master)
  endif
  ifneq ($(shell git rev-parse HEAD),$(shell git rev-parse origin/master))
		$(error Your master branch is not up to date with origin/master, please pull before deploying)
  endif


.PHONY: deploy
deploy: master-branch-check build-web
	cp $(ROOT)/gallery/web/favicon.ico $(ROOT)/gallery/build/web/
	firebase deploy

.PHONY: gen-l10n
gen-l10n:
	$(DART) $(FLUTTER_DIR)/dev/tools/localization/bin/gen_l10n.dart \
    --template-arb-file=intl_en_US.arb \
    --output-localization-file=gallery_localizations.dart \
    --output-class=GalleryLocalizations

.PHONY: l10n
l10n: gen-l10n format
	cd $(ROOT)/l10n_cli/ && $(FLUTTER) pub get
	$(DART) $(ROOT)/l10n_cli/bin/main.dart

.PHONY: update-code-segments
update-code-segments:
	cd $(ROOT)/codeviewer_cli/ && pub get
	$(DART) $(ROOT)/codeviewer_cli/bin/main.dart
	$(FLUTTER) format $(ROOT)/gallery/lib/codeviewer/code_segments.dart
