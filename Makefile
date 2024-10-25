CONTENT_DIR=./content
SPELL_CLI=/usr/local/bin/aspell
SPELL_SKIP=./content/post/markdown-syntax/index.md|./content/post/shortcodes/index.md

default: post

post: SLUG = $(shell echo $(TITLE) | tr A-Z a-z | sed 's/ /-/g')
post:
	@echo "Creating post using slug $(SLUG) ..."
	hugo new content post/$(SLUG)/index.md

spell-check:
		@for FILE in `find $(CONTENT_DIR) -name "*.md"`; do \
		RESULTS=$$(cat $$FILE | $(SPELL_CLI) --mode=markdown list | sort -u | sed -e ':a' -e 'N;$$!ba' -e 's/\n/, /g'); \
		if [[ "$$FILE" =~ ^($(SPELL_SKIP)) ]] ; then \
		break; \
		fi; \
		if [[ "$$RESULTS" != "" ]] ; then \
		echo "Potential spelling errors in $$FILE:"; \
		echo "$$RESULTS" | \
		sed -e 's/^/    /'; \
		echo; \
		fi; \
		done

add-word: WORD ?= ""
add-word:
		@echo "*$(WORD)\n#" | $(SPELL_CLI) -a

add-words: WORDS ?= ""
add-words:
		@echo "Adding words:"
		@for WORD in `echo $(WORDS)| tr "," "\n"| tr "," "\n" | sed -e 's/^[ ]*//' | sed -e 's/[ ]*$$//'`; \
		do echo "  $$WORD ..."; \
		echo "*$$WORD\n#" | $(SPELL_CLI) -a > /dev/null; \
		done
		@echo

spell-suggest:
		@for FILE in `find . -name "*.md"`; do \
		RESULTS=$$(cat $$FILE | $(SPELL_CLI) -d en_GB --mode=markdown list | sort -u ); \
		if [[ "$$RESULTS" != "" ]] ; then \
		echo "Potential spelling errors in $$FILE:"; \
		for WORD in $$RESULTS; do \
		echo $$WORD| $(SPELL_CLI) -d en_GB pipe | tail -2|head -1 | sed -e 's/^/    /'; \
		done; \
		echo; \
		fi; \
		done
