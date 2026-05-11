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
    configuration = Configuration(host=_get_default_host())
    yield configuration


@pytest_asyncio.fixture()
async def api_client(configuration: Configuration):
    api = ApiClient(configuration=configuration)
    yield api
    await api.close()
