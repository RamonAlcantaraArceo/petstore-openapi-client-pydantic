# petstore_openapi_client.PetApi

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_pet**](PetApi.md#add_pet) | **POST** /api/v1/pet | Add Pet
[**delete_pet**](PetApi.md#delete_pet) | **DELETE** /api/v1/pet/{pet_id} | Delete Pet
[**find_pets_by_status**](PetApi.md#find_pets_by_status) | **GET** /api/v1/pet/findByStatus | Find Pets By Status
[**find_pets_by_tags**](PetApi.md#find_pets_by_tags) | **GET** /api/v1/pet/findByTags | Find Pets By Tags
[**get_pet_by_id**](PetApi.md#get_pet_by_id) | **GET** /api/v1/pet/{pet_id} | Get Pet By Id
[**update_pet**](PetApi.md#update_pet) | **PUT** /api/v1/pet | Update Pet
[**update_pet_with_form**](PetApi.md#update_pet_with_form) | **POST** /api/v1/pet/{pet_id} | Update Pet With Form
[**upload_file**](PetApi.md#upload_file) | **POST** /api/v1/pet/{pet_id}/uploadFile | Upload File


# **add_pet**
> Pet add_pet(pet_create)

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
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.pet import Pet
from petstore_openapi_client.models.pet_create import PetCreate
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
        api_instance = petstore_openapi_client.PetApi(api_client)
        pet_create = petstore_openapi_client.PetCreate() # PetCreate | 

        try:
            # Add Pet
            api_response = await api_instance.add_pet(pet_create)
            print("The response of PetApi->add_pet:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->add_pet: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
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

# **delete_pet**
> Dict[str, str] delete_pet(pet_id)

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
        api_instance = petstore_openapi_client.PetApi(api_client)
        pet_id = 56 # int | 

        try:
            # Delete Pet
            api_response = await api_instance.delete_pet(pet_id)
            print("The response of PetApi->delete_pet:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->delete_pet: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
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

# **find_pets_by_status**
> List[Pet] find_pets_by_status(status=status)

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
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.pet import Pet
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
        api_instance = petstore_openapi_client.PetApi(api_client)
        status = petstore_openapi_client.PetStatus() # PetStatus | Status values to filter by (optional)

        try:
            # Find Pets By Status
            api_response = await api_instance.find_pets_by_status(status=status)
            print("The response of PetApi->find_pets_by_status:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->find_pets_by_status: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**PetStatus**](.md)| Status values to filter by | [optional] 

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

# **find_pets_by_tags**
> List[Pet] find_pets_by_tags(tags)

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
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.pet import Pet
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
        api_instance = petstore_openapi_client.PetApi(api_client)
        tags = ['tags_example'] # List[str] | Tags to filter by

        try:
            # Find Pets By Tags
            api_response = await api_instance.find_pets_by_tags(tags)
            print("The response of PetApi->find_pets_by_tags:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->find_pets_by_tags: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
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

# **get_pet_by_id**
> Pet get_pet_by_id(pet_id)

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
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.pet import Pet
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
        api_instance = petstore_openapi_client.PetApi(api_client)
        pet_id = 56 # int | 

        try:
            # Get Pet By Id
            api_response = await api_instance.get_pet_by_id(pet_id)
            print("The response of PetApi->get_pet_by_id:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->get_pet_by_id: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
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

# **update_pet**
> Pet update_pet(pet_update)

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
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.pet import Pet
from petstore_openapi_client.models.pet_update import PetUpdate
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
        api_instance = petstore_openapi_client.PetApi(api_client)
        pet_update = petstore_openapi_client.PetUpdate() # PetUpdate | 

        try:
            # Update Pet
            api_response = await api_instance.update_pet(pet_update)
            print("The response of PetApi->update_pet:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->update_pet: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
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

# **update_pet_with_form**
> Pet update_pet_with_form(pet_id, name=name, status=status)

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
import asyncio 
import time
import os
import petstore_openapi_client
from petstore_openapi_client.models.pet import Pet
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
        api_instance = petstore_openapi_client.PetApi(api_client)
        pet_id = 56 # int | 
        name = 'name_example' # str |  (optional)
        status = 'status_example' # str |  (optional)

        try:
            # Update Pet With Form
            api_response = await api_instance.update_pet_with_form(pet_id, name=name, status=status)
            print("The response of PetApi->update_pet_with_form:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->update_pet_with_form: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
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

# **upload_file**
> Dict[str, str] upload_file(pet_id, file=file, additional_metadata=additional_metadata)

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
        api_instance = petstore_openapi_client.PetApi(api_client)
        pet_id = 56 # int | 
        file = 'file_example' # str |  (optional)
        additional_metadata = 'additional_metadata_example' # str |  (optional)

        try:
            # Upload File
            api_response = await api_instance.upload_file(pet_id, file=file, additional_metadata=additional_metadata)
            print("The response of PetApi->upload_file:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling PetApi->upload_file: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
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

