

help:
	docker run --rm openapitools/openapi-generator-cli help generate

interactive:
	docker run --rm -it \
	-v ${PWD}:/local openapitools/openapi-generator-cli bash

generate:
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli generate \
	--generator-name python-pydantic-v1 \
	--input-spec /local/openapi/openapi.json \
	--template-dir /local/openapi/templates \
	--output /local \
	--config /local/openapi/config.json

	-rm ./setup.py
	-rm ./setup.cfg
	-rm ./.travis.yml

	@echo "Running ruff to fix formatting and linting issues..."
	@uv run ruff format .
	@uv run ruff check . --fix --unsafe-fixes
	@echo "... Done"

generate-debug:
	rm -rf tmp-gen/test

	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli generate \
	--generator-name python-pydantic-v1 \
	--input-spec /local/openapi/openapi.json \
	--template-dir /local/openapi/templates \
	--output /local/tmp-gen \
	--enable-post-process-file \
	--config /local/openapi/config.json
	rm ./tmp-gen/setup.py
	rm ./tmp-gen/setup.cfg
	rm ./tmp-gen/.travis.yml


generate-vanilla:
	rm -rf tmp-gen

	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli generate \
	--generator-name python-pydantic-v1 \
	--input-spec /local/openapi/openapi.json \
	--output /local/tmp-gen 

get-templates:
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli author \
	template \
	--generator-name python-pydantic-v1 \
	--output /local/.templates