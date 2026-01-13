# Marp Presentation Build File
# Build the varnish.md presentation to HTML and PDF

# Variables
SOURCE = varnish.md
OUTPUT_DIR = output
HTML_OUTPUT = $(OUTPUT_DIR)/index.html
PDF_OUTPUT = $(OUTPUT_DIR)/varnish.pdf
MARP = npx @marp-team/marp-cli

# Default target
.PHONY: all
all: html

# Create output directory
$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

# Build HTML
.PHONY: html
html: $(OUTPUT_DIR)
	$(MARP) $(SOURCE) -o $(HTML_OUTPUT)
	@echo "HTML presentation built: $(HTML_OUTPUT)"

# Build PDF
.PHONY: pdf
pdf: $(OUTPUT_DIR)
	$(MARP) $(SOURCE) -o $(PDF_OUTPUT) --allow-local-files
	@echo "PDF presentation built: $(PDF_OUTPUT)"

# Build both HTML and PDF
.PHONY: build
build: html pdf

# Watch mode for development
.PHONY: watch
watch:
	$(MARP) -w $(SOURCE) -o $(HTML_OUTPUT)

# Preview in browser
.PHONY: preview
preview: html
	open $(HTML_OUTPUT)

# Clean output
.PHONY: clean
clean:
	rm -rf $(OUTPUT_DIR)
	@echo "Output directory cleaned"

# Help
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  make          - Build HTML (default)"
	@echo "  make html     - Build HTML presentation"
	@echo "  make pdf      - Build PDF presentation"
	@echo "  make build    - Build both HTML and PDF"
	@echo "  make watch    - Watch for changes and rebuild HTML"
	@echo "  make preview  - Build and open HTML in browser"
	@echo "  make clean    - Remove output directory"
	@echo "  make help     - Show this help message"
