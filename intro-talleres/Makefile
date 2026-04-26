SRC := src/main.typ
OUT := out/presentación.pdf

.PHONY: build clean watch

build: $(OUT)

$(OUT): $(shell find src -type f)
	@mkdir -p out
	typst compile $(SRC) $(OUT)

watch:
	typst watch $(SRC) $(OUT)

clean:
	rm -f $(OUT)
