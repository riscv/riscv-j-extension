HEADER_SOURCE := zjid/header.adoc
PDF_RESULT := zjid-spec.pdf
SOURCES := $(HEADER_SOURCE)

all: $(PDF_RESULT)

.PHONY: $(PDF_RESULT)
$(PDF_RESULT): $(SOURCES) docs-templates
	asciidoctor-pdf \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-templates/resources/fonts \
    --attribute=pdf-style=docs-templates/resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --require=asciidoctor-diagram \
    --out-file=$@ \
    $(HEADER_SOURCE)

docs-templates:
	git clone https://github.com/riscv/docs-templates.git
	mkdir -p zjid/images
	cp docs-templates/images/risc-v_logo.png zjid/images
	cp docs-templates/images/backpage.png zjid/images
