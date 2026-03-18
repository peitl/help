PANDOC = pandoc
SRC = README.md
OUT = index.html

$(OUT): $(SRC)
	$(PANDOC) $(SRC) \
		--standalone \
		--metadata title="Help" \
		--highlight-style=tango \
		-o $(OUT)

clean:
	rm -f $(OUT)

.PHONY: clean
