

help:
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli --help

interactive:
	docker run --rm -it \
	-v ${PWD}:/local openapitools/openapi-generator-cli bash

generate:
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli generate \
	--generator-name python-pydantic-v1 \
	--input-spec /local/openapi/openapi.json \
	--output /local \
	--config /local/openapi/config.json

get-templates:
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli author \
	template \
	--generator-name python-pydantic-v1 \
	--output /local/.templates
