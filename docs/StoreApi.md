# openapi_client.StoreApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_order_api_v1_store_order_order_id_delete**](StoreApi.md#delete_order_api_v1_store_order_order_id_delete) | **DELETE** /api/v1/store/order/{order_id} | Delete Order
[**get_inventory_api_v1_store_inventory_get**](StoreApi.md#get_inventory_api_v1_store_inventory_get) | **GET** /api/v1/store/inventory | Get Inventory
[**get_order_by_id_api_v1_store_order_order_id_get**](StoreApi.md#get_order_by_id_api_v1_store_order_order_id_get) | **GET** /api/v1/store/order/{order_id} | Get Order By Id
[**place_order_api_v1_store_order_post**](StoreApi.md#place_order_api_v1_store_order_post) | **POST** /api/v1/store/order | Place Order


# **delete_order_api_v1_store_order_order_id_delete**
> Dict[str, str] delete_order_api_v1_store_order_order_id_delete(order_id)

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
import time
import os
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.StoreApi(api_client)
    order_id = 56 # int | 

    try:
        # Delete Order
        api_response = api_instance.delete_order_api_v1_store_order_order_id_delete(order_id)
        print("The response of StoreApi->delete_order_api_v1_store_order_order_id_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StoreApi->delete_order_api_v1_store_order_order_id_delete: %s\n" % e)
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

# **get_inventory_api_v1_store_inventory_get**
> Dict[str, int] get_inventory_api_v1_store_inventory_get()

Get Inventory

Return pet inventories by status.

Args:
    service: Injected OrderService.

Returns:
    Dict mapping status to count of pets with that status.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import time
import os
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.StoreApi(api_client)

    try:
        # Get Inventory
        api_response = api_instance.get_inventory_api_v1_store_inventory_get()
        print("The response of StoreApi->get_inventory_api_v1_store_inventory_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StoreApi->get_inventory_api_v1_store_inventory_get: %s\n" % e)
```



### Parameters
This endpoint does not need any parameter.

### Return type

**Dict[str, int]**

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

# **get_order_by_id_api_v1_store_order_order_id_get**
> Order get_order_by_id_api_v1_store_order_order_id_get(order_id)

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
import time
import os
import openapi_client
from openapi_client.models.order import Order
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.StoreApi(api_client)
    order_id = 56 # int | 

    try:
        # Get Order By Id
        api_response = api_instance.get_order_by_id_api_v1_store_order_order_id_get(order_id)
        print("The response of StoreApi->get_order_by_id_api_v1_store_order_order_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StoreApi->get_order_by_id_api_v1_store_order_order_id_get: %s\n" % e)
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

# **place_order_api_v1_store_order_post**
> Order place_order_api_v1_store_order_post(order_create)

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
import time
import os
import openapi_client
from openapi_client.models.order import Order
from openapi_client.models.order_create import OrderCreate
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: APIKeyHeader
configuration.api_key['APIKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['APIKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.StoreApi(api_client)
    order_create = openapi_client.OrderCreate() # OrderCreate | 

    try:
        # Place Order
        api_response = api_instance.place_order_api_v1_store_order_post(order_create)
        print("The response of StoreApi->place_order_api_v1_store_order_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StoreApi->place_order_api_v1_store_order_post: %s\n" % e)
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

