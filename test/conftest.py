import os

import pytest_asyncio

from openapi_client import ApiClient, Configuration


def _get_default_host() -> str:
    """Prefer generated server URL; fall back to localhost:8000."""
    host = Configuration().host
    if host:
        return host
    return "http://localhost:8000"

@pytest_asyncio.fixture()
async def configuration():
    """Create a default configuration for testing"""

    # Default to local dev key while still allowing overrides from environment.
    api_key = os.getenv("API_KEY", "dev-api-key")
    configuration = Configuration(
        host=_get_default_host(),
        api_key={"APIKeyHeader": api_key}
    )
    yield configuration


@pytest_asyncio.fixture()
async def api_client(configuration: Configuration):
    async with ApiClient(configuration=configuration) as api:
        yield api
