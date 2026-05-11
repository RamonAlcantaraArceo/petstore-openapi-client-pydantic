import asyncio 
import time
import os
import openapi_client
from openapi_client.models.pet import Pet
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost:8000"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

async def main():

    # Enter a context with an instance of the API client
    async with openapi_client.ApiClient(configuration) as api_client:
        # Create an instance of the API class
        api_instance = openapi_client.PetApi(api_client)
        status = 'available' # str | Status values to filter by (optional) (default to 'available')

        try:
            # Find Pets By Status
            api_response = await api_instance.find_pets_by_status_api_v1_pet_find_by_status_get(status=status)
            print("The response of PetApi->find_pets_by_status_api_v1_pet_find_by_status_get:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->find_pets_by_status_api_v1_pet_find_by_status_get: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())