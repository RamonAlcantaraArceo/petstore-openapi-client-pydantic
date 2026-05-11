

help:
	docker run --rm openapitools/openapi-generator-cli help generate

interactive:
	docker run --rm -it \
	-v ${PWD}:/local openapitools/openapi-generator-cli bash

generate:
	rm -f test/test_*.py
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli generate \
	--generator-name python-pydantic-v1 \
	--input-spec /local/openapi/openapi.json \
	--template-dir /local/openapi/templates \
	--output /local \
	--config /local/openapi/config.json
	cp openapi/templates/conftest.py test/conftest.py

generate-debug:
	rm -rf tmp-gen/test
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli generate \
	--generator-name python-pydantic-v1 \
	--input-spec /local/openapi/openapi.json \
	--template-dir /local/openapi/templates \
	--output /local/tmp-gen \
	--config /local/openapi/config.json
	cp openapi/templates/conftest.py tmp-gen/test/conftest.py

get-templates:
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli author \
	template \
	--generator-name python-pydantic-v1 \
	--output /local/.templates
