SRC := src/main.typ
OUT := out/intro_talleres.pdf
SOURCES := $(shell find src -type f)

.PHONY: all clean watch

all: $(OUT)

$(OUT): $(SOURCES)
	@mkdir -p out
	typst compile --root src $(SRC) $(OUT)

watch:
	@mkdir -p out
	typst watch --root src $(SRC) $(OUT)

clean:
	rm -rf out/
