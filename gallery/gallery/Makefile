ROOT := $(shell git rev-parse --show-toplevel)/gallery
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
	cd $(ROOT)/codeviewer_cli/ && $(FLUTTER) pub get
	$(DART) $(ROOT)/codeviewer_cli/bin/main.dart
	$(FLUTTER) format $(ROOT)/gallery/lib/codeviewer/code_segments.dart
