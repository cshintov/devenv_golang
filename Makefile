all: bin/example
test: lint unit-test

PLATFORM=local

.PHONY: bin/example
bin/example:
	@docker build . --target bin --progress plain \
    --output bin/ \
    --platform ${PLATFORM}

.PHONY: unit-test
unit-test:
	@docker build . --target unit-test --progress plain

.PHONY: lint
lint:
	@docker build . --target lint --progress plain \
    --platform ${PLATFORM}
