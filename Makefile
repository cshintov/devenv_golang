all: bin/example

.PHONY: bin/example

PLATFORM=local

bin/example:
	@docker build . --target bin \
	   --output bin/ \
	   --platform ${PLATFORM}
