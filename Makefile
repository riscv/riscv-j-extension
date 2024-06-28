all: zjid-spec.pdf zjpm-spec.pdf

zjid-spec.pdf: zjid/*.adoc docs-templates
	mkdir -p zjid/images
	cp docs-templates/src/images/risc-v_logo.png zjid/images
	cp docs-templates/src/images/backpage.png zjid/images
	asciidoctor-pdf \
    -a compress \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-templates/resources/fonts \
    --attribute=pdf-style=docs-templates/resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --out-file=$@ \
    zjid/header.adoc

zjpm-spec.pdf: zjpm/*.adoc docs-templates
	mkdir -p zjpm/images
	cp docs-templates/src/images/risc-v_logo.png zjpm/images
	cp docs-templates/src/images/backpage.png zjpm/images
	asciidoctor-pdf \
    -a compress \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-templates/resources/fonts \
    --attribute=pdf-style=docs-templates/resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --out-file=$@ \
    zjpm/header.adoc

docs-templates:
	git clone https://github.com/riscv/docs-templates.git
