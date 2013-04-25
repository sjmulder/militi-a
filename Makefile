DOC_IN=Militi\ A.per
DOC_OUT=Readme.md

all: doc

clean:
	rm -f $(DOC_OUT)

doc: $(DOC_OUT)

$(DOC_OUT): $(DOC_IN)
	cat $(DOC_IN)               | \
	sed 's/^\([^;].*\)/    \1/' | \
	sed 's/^;[ ]*//'              \
	>$(DOC_OUT)
