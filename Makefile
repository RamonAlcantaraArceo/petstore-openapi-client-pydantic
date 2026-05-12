

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
	uv run --python .venv/bin/python scripts/postprocess_pydantic_v2.py --target ./openapi_client

	-rm ./setup.py
	-rm ./setup.cfg
	-rm ./.travis.yml

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
	uv run --python .venv/bin/python scripts/postprocess_pydantic_v2.py --target ./tmp-gen/openapi_client
	rm ./tmp-gen/setup.py
	rm ./tmp-gen/setup.cfg
	rm ./tmp-gen/.travis.yml

get-templates:
	docker run --rm \
	-v ${PWD}:/local openapitools/openapi-generator-cli author \
	template \
	--generator-name python-pydantic-v1 \
	--output /local/.templates