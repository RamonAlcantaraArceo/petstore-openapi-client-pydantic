# UserCreate

Schema for creating a new user.  Attributes:     password: User's plain-text password (hashed before storage).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 
**user_status** | **int** |  | [optional] 
**password** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.user_create import UserCreate

# TODO update the JSON string below
json = "{}"
# create an instance of UserCreate from a JSON string
user_create_instance = UserCreate.from_json(json)
# print the JSON string representation of the object
print UserCreate.to_json()

# convert the object into a dict
user_create_dict = user_create_instance.to_dict()
# create an instance of UserCreate from a dict
user_create_from_dict = UserCreate.from_dict(user_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


