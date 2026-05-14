# petstore_openapi_client.HealthApi

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_check_health_get**](HealthApi.md#health_check_health_get) | **GET** /health | Health Check


# **health_check_health_get**
> object health_check_health_get()

Health Check

Return service health status.

Returns:
    JSON response with status and storage mode.

### Example

```python
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
# See configuration.py for a list of all supported configuration parameters.
configuration = petstore_openapi_client.Configuration(
    host = "http://localhost:8000"
)


async def main():

    # Enter a context with an instance of the API client
    async with petstore_openapi_client.ApiClient(configuration) as api_client:
        # Create an instance of the API class
        api_instance = petstore_openapi_client.HealthApi(api_client)

        try:
            # Health Check
            api_response = await api_instance.health_check_health_get()
            print("The response of HealthApi->health_check_health_get:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling HealthApi->health_check_health_get: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

