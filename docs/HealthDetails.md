# HealthDetails

Additional health metadata.  Attributes:     version: Application version.     build_date: Build date string.     git_commit_sha: Git commit SHA.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** |  | 
**build_date** | **str** |  | 
**git_commit_sha** | **str** |  | 

## Example

```python
from petstore_openapi_client.models.health_details import HealthDetails

# TODO update the JSON string below
json = "{}"
# create an instance of HealthDetails from a JSON string
health_details_instance = HealthDetails.from_json(json)
# print the JSON string representation of the object
print HealthDetails.to_json()

# convert the object into a dict
health_details_dict = health_details_instance.to_dict()
# create an instance of HealthDetails from a dict
health_details_from_dict = HealthDetails.from_dict(health_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


