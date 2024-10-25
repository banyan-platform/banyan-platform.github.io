default: post

post: SLUG = $(shell echo $(VAR) | tr A-Z a-z | sed 's/ /-/g')
post:
	SLUG=
	hugo new content post/$(SLUG)/index.md
