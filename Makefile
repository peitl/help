PANDOC = pandoc
SRC = README.md
OUT = index.html

$(OUT): $(SRC) style.css
	$(PANDOC) $(SRC) \
		--embed-resources --standalone \
		--metadata title="Help" \
		--highlight-style=tango \
		--css style.css \
		-o $(OUT)

clean:
	rm -f $(OUT)

.PHONY: clean
