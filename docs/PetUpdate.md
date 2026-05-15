# PetUpdate

Schema for updating an existing pet.  Attributes:     id: Pet identifier (required for updates).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**photo_urls** | **List[str]** |  | [optional] 
**category** | [**Category**](Category.md) |  | [optional] 
**tags** | [**List[Tag]**](Tag.md) |  | [optional] 
**status** | [**PetStatus**](PetStatus.md) |  | [optional] 
**id** | **int** |  | 

## Example

```python
from petstore_openapi_client.models.pet_update import PetUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of PetUpdate from a JSON string
pet_update_instance = PetUpdate.from_json(json)
# print the JSON string representation of the object
print PetUpdate.to_json()

# convert the object into a dict
pet_update_dict = pet_update_instance.to_dict()
# create an instance of PetUpdate from a dict
pet_update_from_dict = PetUpdate.from_dict(pet_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


