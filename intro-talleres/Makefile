SRC := src/main.typ
OUT := out/presentación.pdf
SOURCES := $(shell find src -type f)

.PHONY: all clean watch

all: $(OUT)

$(OUT): $(SOURCES)
	@mkdir -p out
	typst compile $(SRC) $(OUT)

watch:
	@mkdir -p out
	typst watch $(SRC) $(OUT)

clean:
	rm -rf out/
