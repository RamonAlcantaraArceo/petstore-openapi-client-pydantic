# openapi_client.PetApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_pet_api_v1_pet_post**](PetApi.md#add_pet_api_v1_pet_post) | **POST** /api/v1/pet | Add Pet
[**delete_pet_api_v1_pet_pet_id_delete**](PetApi.md#delete_pet_api_v1_pet_pet_id_delete) | **DELETE** /api/v1/pet/{pet_id} | Delete Pet
[**find_pets_by_status_api_v1_pet_find_by_status_get**](PetApi.md#find_pets_by_status_api_v1_pet_find_by_status_get) | **GET** /api/v1/pet/findByStatus | Find Pets By Status
[**find_pets_by_tags_api_v1_pet_find_by_tags_get**](PetApi.md#find_pets_by_tags_api_v1_pet_find_by_tags_get) | **GET** /api/v1/pet/findByTags | Find Pets By Tags
[**get_pet_by_id_api_v1_pet_pet_id_get**](PetApi.md#get_pet_by_id_api_v1_pet_pet_id_get) | **GET** /api/v1/pet/{pet_id} | Get Pet By Id
[**update_pet_api_v1_pet_put**](PetApi.md#update_pet_api_v1_pet_put) | **PUT** /api/v1/pet | Update Pet
[**update_pet_with_form_api_v1_pet_pet_id_post**](PetApi.md#update_pet_with_form_api_v1_pet_pet_id_post) | **POST** /api/v1/pet/{pet_id} | Update Pet With Form
[**upload_file_api_v1_pet_pet_id_upload_file_post**](PetApi.md#upload_file_api_v1_pet_pet_id_upload_file_post) | **POST** /api/v1/pet/{pet_id}/uploadFile | Upload File


# **add_pet_api_v1_pet_post**
> Pet add_pet_api_v1_pet_post(pet_create)

Add Pet

Add a new pet to the store.

Args:
    pet: Pet data from request body.
    service: Injected PetService.

Returns:
    The created pet.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import time
import os
import openapi_client
from openapi_client.models.pet import Pet
from openapi_client.models.pet_create import PetCreate
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
async with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PetApi(api_client)
    pet_create = openapi_client.PetCreate() # PetCreate | 

    try:
        # Add Pet
        api_response = await api_instance.add_pet_api_v1_pet_post(pet_create)
        print("The response of PetApi->add_pet_api_v1_pet_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PetApi->add_pet_api_v1_pet_post: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet_create** | [**PetCreate**](PetCreate.md)|  | 

### Return type

[**Pet**](Pet.md)

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

# **delete_pet_api_v1_pet_pet_id_delete**
> Dict[str, str] delete_pet_api_v1_pet_pet_id_delete(pet_id)

Delete Pet

Delete a pet.

Args:
    pet_id: The pet's unique identifier.
    service: Injected PetService.

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
async with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PetApi(api_client)
    pet_id = 56 # int | 

    try:
        # Delete Pet
        api_response = await api_instance.delete_pet_api_v1_pet_pet_id_delete(pet_id)
        print("The response of PetApi->delete_pet_api_v1_pet_pet_id_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PetApi->delete_pet_api_v1_pet_pet_id_delete: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet_id** | **int**|  | 

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

# **find_pets_by_status_api_v1_pet_find_by_status_get**
> List[Pet] find_pets_by_status_api_v1_pet_find_by_status_get(status=status)

Find Pets By Status

Find pets by status.

Args:
    status: Availability status to filter by.
    service: Injected PetService.

Returns:
    List of pets matching the given status.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import time
import os
import openapi_client
from openapi_client.models.pet import Pet
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
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **str**| Status values to filter by | [optional] [default to &#39;available&#39;]

### Return type

[**List[Pet]**](Pet.md)

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

# **find_pets_by_tags_api_v1_pet_find_by_tags_get**
> List[Pet] find_pets_by_tags_api_v1_pet_find_by_tags_get(tags)

Find Pets By Tags

Find pets by tags.

Args:
    tags: Tag names to filter by.
    service: Injected PetService.

Returns:
    List of pets matching any of the given tags.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import time
import os
import openapi_client
from openapi_client.models.pet import Pet
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
async with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PetApi(api_client)
    tags = ['tags_example'] # List[str] | Tags to filter by

    try:
        # Find Pets By Tags
        api_response = await api_instance.find_pets_by_tags_api_v1_pet_find_by_tags_get(tags)
        print("The response of PetApi->find_pets_by_tags_api_v1_pet_find_by_tags_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PetApi->find_pets_by_tags_api_v1_pet_find_by_tags_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**List[str]**](str.md)| Tags to filter by | 

### Return type

[**List[Pet]**](Pet.md)

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

# **get_pet_by_id_api_v1_pet_pet_id_get**
> Pet get_pet_by_id_api_v1_pet_pet_id_get(pet_id)

Get Pet By Id

Find pet by ID.

Args:
    pet_id: The pet's unique identifier.
    service: Injected PetService.

Returns:
    The pet with the given ID.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import time
import os
import openapi_client
from openapi_client.models.pet import Pet
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
async with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PetApi(api_client)
    pet_id = 56 # int | 

    try:
        # Get Pet By Id
        api_response = await api_instance.get_pet_by_id_api_v1_pet_pet_id_get(pet_id)
        print("The response of PetApi->get_pet_by_id_api_v1_pet_pet_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PetApi->get_pet_by_id_api_v1_pet_pet_id_get: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet_id** | **int**|  | 

### Return type

[**Pet**](Pet.md)

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

# **update_pet_api_v1_pet_put**
> Pet update_pet_api_v1_pet_put(pet_update)

Update Pet

Update an existing pet.

Args:
    pet: Updated pet data from request body.
    service: Injected PetService.

Returns:
    The updated pet.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import time
import os
import openapi_client
from openapi_client.models.pet import Pet
from openapi_client.models.pet_update import PetUpdate
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
async with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PetApi(api_client)
    pet_update = openapi_client.PetUpdate() # PetUpdate | 

    try:
        # Update Pet
        api_response = await api_instance.update_pet_api_v1_pet_put(pet_update)
        print("The response of PetApi->update_pet_api_v1_pet_put:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PetApi->update_pet_api_v1_pet_put: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet_update** | [**PetUpdate**](PetUpdate.md)|  | 

### Return type

[**Pet**](Pet.md)

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

# **update_pet_with_form_api_v1_pet_pet_id_post**
> Pet update_pet_with_form_api_v1_pet_pet_id_post(pet_id, name=name, status=status)

Update Pet With Form

Update a pet with form data.

Args:
    pet_id: The pet's unique identifier.
    service: Injected PetService.
    name: New name for the pet.
    status: New status for the pet.

Returns:
    The updated pet.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import time
import os
import openapi_client
from openapi_client.models.pet import Pet
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
async with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PetApi(api_client)
    pet_id = 56 # int | 
    name = 'name_example' # str |  (optional)
    status = 'status_example' # str |  (optional)

    try:
        # Update Pet With Form
        api_response = await api_instance.update_pet_with_form_api_v1_pet_pet_id_post(pet_id, name=name, status=status)
        print("The response of PetApi->update_pet_with_form_api_v1_pet_pet_id_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PetApi->update_pet_with_form_api_v1_pet_pet_id_post: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet_id** | **int**|  | 
 **name** | **str**|  | [optional] 
 **status** | **str**|  | [optional] 

### Return type

[**Pet**](Pet.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload_file_api_v1_pet_pet_id_upload_file_post**
> Dict[str, str] upload_file_api_v1_pet_pet_id_upload_file_post(pet_id, file=file, additional_metadata=additional_metadata)

Upload File

Upload an image for a pet.

Args:
    pet_id: The pet's unique identifier.
    service: Injected PetService.
    file: The image file to upload.
    additional_metadata: Optional metadata string.

Returns:
    Confirmation message with file info.

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
async with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.PetApi(api_client)
    pet_id = 56 # int | 
    file = 'file_example' # str |  (optional)
    additional_metadata = 'additional_metadata_example' # str |  (optional)

    try:
        # Upload File
        api_response = await api_instance.upload_file_api_v1_pet_pet_id_upload_file_post(pet_id, file=file, additional_metadata=additional_metadata)
        print("The response of PetApi->upload_file_api_v1_pet_pet_id_upload_file_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PetApi->upload_file_api_v1_pet_pet_id_upload_file_post: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet_id** | **int**|  | 
 **file** | **str**|  | [optional] 
 **additional_metadata** | **str**|  | [optional] 

### Return type

**Dict[str, str]**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful Response |  -  |
**422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

