HUGO_VERSION ?= 0.165.0
HUGO ?= .tools/hugo
HUGO_ASSET ?= hugo_extended_$(HUGO_VERSION)_linux-amd64.tar.gz
HUGO_URL ?= https://github.com/gohugoio/hugo/releases/download/v$(HUGO_VERSION)/$(HUGO_ASSET)
HUGO_CHECKSUMS_URL ?= https://github.com/gohugoio/hugo/releases/download/v$(HUGO_VERSION)/hugo_$(HUGO_VERSION)_checksums.txt
HUGO_ARCHIVE ?= .tools/$(HUGO_ASSET)

.PHONY: build serve hugo

build: hugo
	$(HUGO) build --minify --gc --cleanDestinationDir

serve: hugo
	$(HUGO) server --bind 0.0.0.0 --disableFastRender

hugo:
	@set -eu; \
	if command -v "$(HUGO)" >/dev/null 2>&1 || [ -x "$(HUGO)" ]; then \
		exit 0; \
	elif [ "$(HUGO)" != ".tools/hugo" ]; then \
		echo "Hugo is not available as '$(HUGO)'; install it or use the default HUGO path."; \
		exit 1; \
	else \
		mkdir -p .tools; \
		echo "Downloading Hugo $(HUGO_VERSION) (extended) ..."; \
		curl --fail --silent --show-error --location "$(HUGO_URL)" --output "$(HUGO_ARCHIVE)"; \
		checksum=$$(curl --fail --silent --show-error --location "$(HUGO_CHECKSUMS_URL)" | awk '$$2 == "$(HUGO_ASSET)" { print $$1; exit }'); \
		test -n "$$checksum"; \
		printf '%s  %s\n' "$$checksum" "$(HUGO_ARCHIVE)" | sha256sum --check --status; \
		tar --extract --gzip --file "$(HUGO_ARCHIVE)" --directory .tools hugo; \
		chmod +x "$(HUGO)"; \
	fi
