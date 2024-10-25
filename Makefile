default: post

post: SLUG = $(shell echo $(TITLE) | tr A-Z a-z | sed 's/ /-/g')
post:
	@echo "Creating post using slug $(SLUG) ..."
	hugo new content post/$(SLUG)/index.md
