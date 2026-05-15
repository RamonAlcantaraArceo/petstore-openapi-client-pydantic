# PetCreate

Schema for creating a new pet.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**photo_urls** | **List[str]** |  | [optional] 
**category** | [**Category**](Category.md) |  | [optional] 
**tags** | [**List[Tag]**](Tag.md) |  | [optional] 
**status** | [**PetStatus**](PetStatus.md) |  | [optional] 

## Example

```python
from petstore_openapi_client.models.pet_create import PetCreate

# TODO update the JSON string below
json = "{}"
# create an instance of PetCreate from a JSON string
pet_create_instance = PetCreate.from_json(json)
# print the JSON string representation of the object
print PetCreate.to_json()

# convert the object into a dict
pet_create_dict = pet_create_instance.to_dict()
# create an instance of PetCreate from a dict
pet_create_from_dict = PetCreate.from_dict(pet_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


