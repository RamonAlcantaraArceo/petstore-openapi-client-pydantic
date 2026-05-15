# petstore_openapi_client.UserApi

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UserApi.md#create_user) | **POST** /api/v1/user | Create User
[**create_users_with_list**](UserApi.md#create_users_with_list) | **POST** /api/v1/user/createWithList | Create Users With List
[**delete_user**](UserApi.md#delete_user) | **DELETE** /api/v1/user/{username} | Delete User
[**get_user_by_name**](UserApi.md#get_user_by_name) | **GET** /api/v1/user/{username} | Get User By Name
[**login_user**](UserApi.md#login_user) | **GET** /api/v1/user/login | Login User
[**logout_user**](UserApi.md#logout_user) | **GET** /api/v1/user/logout | Logout User
[**update_user**](UserApi.md#update_user) | **PUT** /api/v1/user/{username} | Update User


# **create_user**
> User create_user(user_create)

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
import petstore_openapi_client
from petstore_openapi_client.models.user import User
from petstore_openapi_client.models.user_create import UserCreate
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
        api_instance = petstore_openapi_client.UserApi(api_client)
        user_create = petstore_openapi_client.UserCreate() # UserCreate | 

        try:
            # Create User
            api_response = await api_instance.create_user(user_create)
            print("The response of UserApi->create_user:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->create_user: %s\n" % e)

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

# **create_users_with_list**
> List[User] create_users_with_list(user_create)

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
import petstore_openapi_client
from petstore_openapi_client.models.user import User
from petstore_openapi_client.models.user_create import UserCreate
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
        api_instance = petstore_openapi_client.UserApi(api_client)
        user_create = [petstore_openapi_client.UserCreate()] # List[UserCreate] | 

        try:
            # Create Users With List
            api_response = await api_instance.create_users_with_list(user_create)
            print("The response of UserApi->create_users_with_list:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->create_users_with_list: %s\n" % e)

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

# **delete_user**
> Dict[str, str] delete_user(username)

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
        api_instance = petstore_openapi_client.UserApi(api_client)
        username = 'username_example' # str | 

        try:
            # Delete User
            api_response = await api_instance.delete_user(username)
            print("The response of UserApi->delete_user:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->delete_user: %s\n" % e)

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

# **get_user_by_name**
> User get_user_by_name(username)

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
import petstore_openapi_client
from petstore_openapi_client.models.user import User
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
        api_instance = petstore_openapi_client.UserApi(api_client)
        username = 'username_example' # str | 

        try:
            # Get User By Name
            api_response = await api_instance.get_user_by_name(username)
            print("The response of UserApi->get_user_by_name:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->get_user_by_name: %s\n" % e)

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

# **login_user**
> Dict[str, str] login_user(username, password)

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
        api_instance = petstore_openapi_client.UserApi(api_client)
        username = 'username_example' # str | The username for login
        password = 'password_example' # str | The password for login

        try:
            # Login User
            api_response = await api_instance.login_user(username, password)
            print("The response of UserApi->login_user:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->login_user: %s\n" % e)

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

# **logout_user**
> Dict[str, str] logout_user()

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
        api_instance = petstore_openapi_client.UserApi(api_client)

        try:
            # Logout User
            api_response = await api_instance.logout_user()
            print("The response of UserApi->logout_user:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->logout_user: %s\n" % e)

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

# **update_user**
> User update_user(username, user_update)

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
import petstore_openapi_client
from petstore_openapi_client.models.user import User
from petstore_openapi_client.models.user_update import UserUpdate
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
        api_instance = petstore_openapi_client.UserApi(api_client)
        username = 'username_example' # str | 
        user_update = petstore_openapi_client.UserUpdate() # UserUpdate | 

        try:
            # Update User
            api_response = await api_instance.update_user(username, user_update)
            print("The response of UserApi->update_user:\n")
            pprint(api_response)
        except Exception as e:
            print("Exception when calling UserApi->update_user: %s\n" % e)

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

