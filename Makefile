DOCKER_IMAGE=swift:6.1.2

.PHONY: clean
clean:
	rm -rf .build .swiftpm Package.resolved || true

.PHONY: build-test
build-test:
	swift build

.PHONY: build-release
build-release:
	swift build --static-swift-stdlib -c release

dev:
	docker run --rm -it \
		-v $(shell pwd):/app \
		-w /app \
		$(DOCKER_IMAGE) \
		/bin/bash
