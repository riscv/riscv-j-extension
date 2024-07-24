all: zjid-spec.pdf zjpm-spec.pdf

zjid-spec.pdf: zjid/*.adoc
	asciidoctor-pdf \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-resources/fonts \
    --attribute=pdf-theme=docs-resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --out-file=$@ \
    zjid/header.adoc

zjpm-spec.pdf: zjpm/*.adoc
	asciidoctor-pdf \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-resources/fonts \
    --attribute=pdf-theme=docs-resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --out-file=$@ \
    zjpm/header.adoc
