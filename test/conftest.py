import pytest_asyncio

from openapi_client import ApiClient, Configuration


@pytest_asyncio.fixture()
async def configuration():
    configuration = Configuration(host="http://localhost:8000")
    yield configuration

@pytest_asyncio.fixture()
async def api_client(configuration: Configuration):
    api = ApiClient(configuration=configuration)
    yield api
    await api.close()
