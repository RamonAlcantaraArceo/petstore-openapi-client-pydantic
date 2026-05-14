# petstore_openapi_client.StoreApi

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_order**](StoreApi.md#delete_order) | **DELETE** /api/v1/store/order/{order_id} | Delete Order
[**get_inventory**](StoreApi.md#get_inventory) | **GET** /api/v1/store/inventory | Get Inventory
[**get_order_by_id**](StoreApi.md#get_order_by_id) | **GET** /api/v1/store/order/{order_id} | Get Order By Id
[**place_order**](StoreApi.md#place_order) | **POST** /api/v1/store/order | Place Order


# **delete_order**
> Dict[str, str] delete_order(order_id)

Delete Order

Delete purchase order by ID.

Args:
    order_id: The order's unique identifier.
    service: Injected OrderService.

Returns:
    Confirmation message.

### Example

* Api Key Authentication (APIKeyHeader):
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
    async with petstore_openapi_client.ApiClient(configuration) as api_client:
        # Create an instance of the API class
        api_instance = petstore_openapi_client.StoreApi(api_client)
        order_id = 56 # int | 

        try:
            # Delete Order
            api_response = await api_instance.delete_order(order_id)
            print("The response of StoreApi->delete_order:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling StoreApi->delete_order: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **int**|  | 

### Return type

**Dict[str, str]**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_inventory**
> List[Order] get_inventory()

Get Inventory

Return all orders in the store.

Args:
    service: Injected OrderService.

Returns:
    List of all orders.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.order import Order
from petstore_openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
# See configuration.py for a list of all supported configuration parameters.
configuration = petstore_openapi_client.Configuration(
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
    async with petstore_openapi_client.ApiClient(configuration) as api_client:
        # Create an instance of the API class
        api_instance = petstore_openapi_client.StoreApi(api_client)

        try:
            # Get Inventory
            api_response = await api_instance.get_inventory()
            print("The response of StoreApi->get_inventory:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling StoreApi->get_inventory: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters
This endpoint does not need any parameter.

### Return type

[**List[Order]**](Order.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_order_by_id**
> Order get_order_by_id(order_id)

Get Order By Id

Find purchase order by ID.

Args:
    order_id: The order's unique identifier (1–10).
    service: Injected OrderService.

Returns:
    The order with the given ID.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.order import Order
from petstore_openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
# See configuration.py for a list of all supported configuration parameters.
configuration = petstore_openapi_client.Configuration(
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
    async with petstore_openapi_client.ApiClient(configuration) as api_client:
        # Create an instance of the API class
        api_instance = petstore_openapi_client.StoreApi(api_client)
        order_id = 56 # int | 

        try:
            # Get Order By Id
            api_response = await api_instance.get_order_by_id(order_id)
            print("The response of StoreApi->get_order_by_id:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling StoreApi->get_order_by_id: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **int**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **place_order**
> Order place_order(order_create)

Place Order

Place an order for a pet.

Args:
    order: Order data from request body.
    service: Injected OrderService.

Returns:
    The placed order.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.order import Order
from petstore_openapi_client.models.order_create import OrderCreate
from petstore_openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
# See configuration.py for a list of all supported configuration parameters.
configuration = petstore_openapi_client.Configuration(
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
    async with petstore_openapi_client.ApiClient(configuration) as api_client:
        # Create an instance of the API class
        api_instance = petstore_openapi_client.StoreApi(api_client)
        order_create = petstore_openapi_client.OrderCreate() # OrderCreate | 

        try:
            # Place Order
            api_response = await api_instance.place_order(order_create)
            print("The response of StoreApi->place_order:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling StoreApi->place_order: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_create** | [**OrderCreate**](OrderCreate.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

