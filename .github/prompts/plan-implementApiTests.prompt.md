---
description: "Implement functional integration tests for auto-generated API test stubs that call the real service"
name: "Implement API Tests"
argument-hint: "Select API test file to implement"
agent: "agent"
---

## Implement API Tests

Transform auto-generated test stubs in `test/test_*_api.py` into functional integration tests that call the real service at default location defined by `test/conftest.py`.

### Context

The test files were generated from the OpenAPI spec and provide basic endpoint coverage. Each test is currently skipped with a stub implementation. This prompt guides filling in those stubs with practical assertions and test data—a solid starting point rather than exhaustive coverage.

### What to Do

1. **Remove the skip marker**  
   Delete `@pytest.mark.skip(reason="Generated stub test - implement assertions")` from the test method.

2. **Prepare test data**  
   - Check the endpoint's request model in `openapi_client/models/`
   - Create minimal valid test data instances needed for the request
   - Use reasonable values

3. **Invoke the API method**  
   - Call the API client method
   - Store the response in a variable
   - Handle async properly (use `await`)

4. **Add assertions**  
   - Check HTTP status (should be 2xx for success operations)
   - Verify response type and structure (e.g., `assert isinstance(response, Pet)`)
   - Validate key fields match what was sent or expected
   - For read operations (GET), assert response contains expected data

5. **Handle errors gracefully**  
   - Test unhappy paths where appropriate (e.g., invalid ID → 404)
   - Use `pytest.raises()` if the API raises exceptions

### Example Pattern

```python
async def test_add_pet_api_v1_pet_post(self, pet_api_client: PetApi) -> None:
    """Test case for add_pet_api_v1_pet_post - Add Pet"""
    pet_data = PetCreate(name="Fluffy", status="available")
    
    response = await pet_api_client.add_pet(pet_data)
    
    assert isinstance(response, Pet)
    assert response.name == "Fluffy"
    assert response.status == "available"
```

### Test Fixtures Reference

- `api_client` — raw API client configured to hit localhost:8000 (set in `test/conftest.py`)
- Authentication: use header key `APIKeyHeader` / `X-API-Key`; default local value is `dev-api-key` via `API_KEY` env fallback in `test/conftest.py`
- All fixtures are async and ready to use

### Keep in Mind

- Tests are async, so use `await` when calling API methods
- Fixtures in `test/conftest.py` handle configuration and client lifecycle
- Aim for one assertion per "happy path," then add error cases as needed
- Avoid hard-coding IDs—use IDs returned from create operations when needed
- Generated methods have 2 flavors: one that returns just the response, and one with `_with_http_info()` that also returns status and headers. Use the simpler one unless you need to assert on status or headers.
- Some methods that use enums, the method signature may require passing the enum value directly (e.g., `PetStatus.AVAILABLE` instead of `"available"`). sometimes it accepts only the string value. Check the method signature and adjust accordingly.
- If method fails for any other reason add the marker "@pytest.mark.xfail(reason="Investigation Pending")" to the test method and add a comment describing the failure.

### Related Files

- API models: `openapi_client/models/`
- API methods: `openapi_client/api/`
- Test setup: `test/conftest.py`
- Run tests: `API_KEY="dev-api-key" pytest test/test_*_api.py -v`
