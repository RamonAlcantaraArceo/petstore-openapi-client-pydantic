# openapi_client.UserApi

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user_api_v1_user_post**](UserApi.md#create_user_api_v1_user_post) | **POST** /api/v1/user | Create User
[**create_users_with_list_api_v1_user_create_with_list_post**](UserApi.md#create_users_with_list_api_v1_user_create_with_list_post) | **POST** /api/v1/user/createWithList | Create Users With List
[**delete_user_api_v1_user_username_delete**](UserApi.md#delete_user_api_v1_user_username_delete) | **DELETE** /api/v1/user/{username} | Delete User
[**get_user_by_name_api_v1_user_username_get**](UserApi.md#get_user_by_name_api_v1_user_username_get) | **GET** /api/v1/user/{username} | Get User By Name
[**login_user_api_v1_user_login_get**](UserApi.md#login_user_api_v1_user_login_get) | **GET** /api/v1/user/login | Login User
[**logout_user_api_v1_user_logout_get**](UserApi.md#logout_user_api_v1_user_logout_get) | **GET** /api/v1/user/logout | Logout User
[**update_user_api_v1_user_username_put**](UserApi.md#update_user_api_v1_user_username_put) | **PUT** /api/v1/user/{username} | Update User


# **create_user_api_v1_user_post**
> User create_user_api_v1_user_post(user_create)

Create User

Create a new user.

Args:
    user: User data from request body.
    service: Injected UserService.

Returns:
    The created user.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import openapi_client
from openapi_client.models.user import User
from openapi_client.models.user_create import UserCreate
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
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
        api_instance = openapi_client.UserApi(api_client)
        user_create = openapi_client.UserCreate() # UserCreate | 

        try:
            # Create User
            api_response = await api_instance.create_user_api_v1_user_post(user_create)
            print("The response of UserApi->create_user_api_v1_user_post:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->create_user_api_v1_user_post: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_create** | [**UserCreate**](UserCreate.md)|  | 

### Return type

[**User**](User.md)

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

# **create_users_with_list_api_v1_user_create_with_list_post**
> List[User] create_users_with_list_api_v1_user_create_with_list_post(user_create)

Create Users With List

Create users from a list.

Args:
    users: List of user data from request body.
    service: Injected UserService.

Returns:
    List of created users.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import openapi_client
from openapi_client.models.user import User
from openapi_client.models.user_create import UserCreate
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
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
        api_instance = openapi_client.UserApi(api_client)
        user_create = [openapi_client.UserCreate()] # List[UserCreate] | 

        try:
            # Create Users With List
            api_response = await api_instance.create_users_with_list_api_v1_user_create_with_list_post(user_create)
            print("The response of UserApi->create_users_with_list_api_v1_user_create_with_list_post:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->create_users_with_list_api_v1_user_create_with_list_post: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_create** | [**List[UserCreate]**](UserCreate.md)|  | 

### Return type

[**List[User]**](User.md)

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

# **delete_user_api_v1_user_username_delete**
> Dict[str, str] delete_user_api_v1_user_username_delete(username)

Delete User

Delete user by username.

Args:
    username: The user's unique username.
    service: Injected UserService.

Returns:
    Confirmation message.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
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
        api_instance = openapi_client.UserApi(api_client)
        username = 'username_example' # str | 

        try:
            # Delete User
            api_response = await api_instance.delete_user_api_v1_user_username_delete(username)
            print("The response of UserApi->delete_user_api_v1_user_username_delete:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->delete_user_api_v1_user_username_delete: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**|  | 

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

# **get_user_by_name_api_v1_user_username_get**
> User get_user_by_name_api_v1_user_username_get(username)

Get User By Name

Get user by username.

Args:
    username: The user's username.
    service: Injected UserService.

Returns:
    The user with the given username.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import openapi_client
from openapi_client.models.user import User
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
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
        api_instance = openapi_client.UserApi(api_client)
        username = 'username_example' # str | 

        try:
            # Get User By Name
            api_response = await api_instance.get_user_by_name_api_v1_user_username_get(username)
            print("The response of UserApi->get_user_by_name_api_v1_user_username_get:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->get_user_by_name_api_v1_user_username_get: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**|  | 

### Return type

[**User**](User.md)

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

# **login_user_api_v1_user_login_get**
> Dict[str, str] login_user_api_v1_user_login_get(username, password)

Login User

Log user into the system.

Args:
    username: The username to log in with.
    password: The password to log in with.
    service: Injected UserService.

Returns:
    Dict containing the session token.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
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
        api_instance = openapi_client.UserApi(api_client)
        username = 'username_example' # str | The username for login
        password = 'password_example' # str | The password for login

        try:
            # Login User
            api_response = await api_instance.login_user_api_v1_user_login_get(username, password)
            print("The response of UserApi->login_user_api_v1_user_login_get:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->login_user_api_v1_user_login_get: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username for login | 
 **password** | **str**| The password for login | 

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

# **logout_user_api_v1_user_logout_get**
> Dict[str, str] logout_user_api_v1_user_logout_get()

Logout User

Log out current logged-in user session.

Args:
    service: Injected UserService.

Returns:
    Confirmation message.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
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
        api_instance = openapi_client.UserApi(api_client)

        try:
            # Logout User
            api_response = await api_instance.logout_user_api_v1_user_logout_get()
            print("The response of UserApi->logout_user_api_v1_user_logout_get:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->logout_user_api_v1_user_logout_get: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters
This endpoint does not need any parameter.

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_api_v1_user_username_put**
> User update_user_api_v1_user_username_put(username, user_update)

Update User

Update user by username.

Args:
    username: The user's current username.
    user: Updated user data.
    service: Injected UserService.

Returns:
    The updated user.

### Example

* Api Key Authentication (APIKeyHeader):
```python
import asyncio 
import time
import os
import openapi_client
from openapi_client.models.user import User
from openapi_client.models.user_update import UserUpdate
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8000
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
        api_instance = openapi_client.UserApi(api_client)
        username = 'username_example' # str | 
        user_update = openapi_client.UserUpdate() # UserUpdate | 

        try:
            # Update User
            api_response = await api_instance.update_user_api_v1_user_username_put(username, user_update)
            print("The response of UserApi->update_user_api_v1_user_username_put:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->update_user_api_v1_user_username_put: %s\n" % e)

if __name__ == '__main__':
    asyncio.run(main())
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**|  | 
 **user_update** | [**UserUpdate**](UserUpdate.md)|  | 

### Return type

[**User**](User.md)

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

