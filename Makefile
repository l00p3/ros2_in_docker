.PHONY: build run clean

build:
	@docker compose run --rm my_humble /bin/bash entrypoints/build.sh

run: build
	@docker compose run --rm my_humble /bin/bash entrypoints/run.sh

penetrate:
	@docker compose run -it --rm my_humble /bin/bash

clean:
	@docker compose run --rm my_humble /bin/bash entrypoints/clean.sh

rmi_image:
	@docker rmi $(shell basename $(shell pwd))-my_humble
