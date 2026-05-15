"""Fluent assertion helpers.

Provides a readable, chainable assertion DSL on top of plain ``assert``
so that test failures carry descriptive messages.

Example
-------
::

    from framework.assertions import assert_that

    assert_that(response.status_code).equals(200)
    assert_that(pets).is_not_empty().has_length_greater_than(0)
    assert_that(pet["name"]).contains("Fido").starts_with("F")
"""

from __future__ import annotations

from enum import Enum
from typing import Any, TypeVar

T = TypeVar("T")


class FluentAssertion[T]:
    """Chainable assertion wrapper.

    Instantiate via :func:`assert_that` rather than directly.
    """

    def __init__(self, value: T, description: str = "") -> None:
        self._value = value
        self._desc = description or repr(value)

    # ------------------------------------------------------------------
    # Generic
    # ------------------------------------------------------------------

    def equals(self, expected: Any) -> FluentAssertion[T]:
        """Assert *value* == *expected*."""
        assert (
            self._value == expected
        ), f"Expected {self._desc} to equal {expected!r}, but got {self._value!r}"
        return self

    def not_equals(self, unexpected: Any) -> FluentAssertion[T]:
        """Assert *value* != *unexpected*."""
        assert (
            self._value != unexpected
        ), f"Expected {self._desc} not to equal {unexpected!r}"
        return self

    def is_none(self) -> FluentAssertion[T]:
        """Assert *value* is ``None``."""
        assert (
            self._value is None
        ), f"Expected {self._desc} to be None, got {self._value!r}"
        return self

    def is_not_none(self) -> FluentAssertion[T]:
        """Assert *value* is not ``None``."""
        assert self._value is not None, f"Expected {self._desc} not to be None"
        return self

    def is_true(self) -> FluentAssertion[T]:
        """Assert *value* is truthy."""
        assert self._value, f"Expected {self._desc} to be truthy, got {self._value!r}"
        return self

    def is_false(self) -> FluentAssertion[T]:
        """Assert *value* is falsy."""
        assert (
            not self._value
        ), f"Expected {self._desc} to be falsy, got {self._value!r}"
        return self

    def is_instance_of(self, type_: type) -> FluentAssertion[T]:
        """Assert *value* is an instance of *type_*."""
        assert isinstance(self._value, type_), (
            f"Expected {self._desc} to be instance of {type_.__name__}, "
            f"got {type(self._value).__name__}"
        )
        return self

    # ------------------------------------------------------------------
    # Comparison
    # ------------------------------------------------------------------

    def is_greater_than(self, other: Any) -> FluentAssertion[T]:
        assert (
            self._value > other
        ), f"Expected {self._desc} > {other!r}, got {self._value!r}"
        return self

    def is_less_than(self, other: Any) -> FluentAssertion[T]:
        assert (
            self._value < other
        ), f"Expected {self._desc} < {other!r}, got {self._value!r}"
        return self

    def is_greater_than_or_equal_to(self, other: Any) -> FluentAssertion[T]:
        assert (
            self._value >= other
        ), f"Expected {self._desc} >= {other!r}, got {self._value!r}"
        return self

    def is_less_than_or_equal_to(self, other: Any) -> FluentAssertion[T]:
        assert (
            self._value <= other
        ), f"Expected {self._desc} <= {other!r}, got {self._value!r}"
        return self

    # ------------------------------------------------------------------
    # String
    # ------------------------------------------------------------------

    def contains(self, substring: str) -> FluentAssertion[T]:
        """Assert the string *value* contains *substring*."""
        assert isinstance(
            self._value, str
        ), f"Expected a string, got {type(self._value)}"
        assert (
            substring in self._value
        ), f"Expected {self._desc} to contain {substring!r}"
        return self

    def starts_with(self, prefix: str) -> FluentAssertion[T]:
        assert isinstance(
            self._value, str
        ), f"Expected a string, got {type(self._value)}"
        assert self._value.startswith(
            prefix
        ), f"Expected {self._desc} to start with {prefix!r}"
        return self

    def ends_with(self, suffix: str) -> FluentAssertion[T]:
        assert isinstance(
            self._value, str
        ), f"Expected a string, got {type(self._value)}"
        assert self._value.endswith(
            suffix
        ), f"Expected {self._desc} to end with {suffix!r}"
        return self

    def matches_pattern(self, pattern: str) -> FluentAssertion[T]:
        """Assert the string *value* matches the regex *pattern*."""
        __tracebackhide__ = True
        import re

        assert isinstance(
            self._value, str
        ), f"Expected a string, got {type(self._value)}"
        assert re.search(
            pattern, self._value
        ), f"Expected {self._desc} to match pattern {pattern!r}"
        return self

    # ------------------------------------------------------------------
    # Collections
    # ------------------------------------------------------------------

    def is_empty(self) -> FluentAssertion[T]:
        """Assert the sequence / mapping is empty."""
        assert len(self._value) == 0, (  # type: ignore[arg-type]
            f"Expected {self._desc} to be empty, got length {len(self._value)}"  # type: ignore[arg-type]
        )
        return self

    def is_not_empty(self) -> FluentAssertion[T]:
        """Assert the sequence / mapping is NOT empty."""
        assert len(self._value) > 0, (  # type: ignore[arg-type]
            f"Expected {self._desc} not to be empty"
        )
        return self

    def has_length(self, length: int) -> FluentAssertion[T]:
        actual = len(self._value)  # type: ignore[arg-type]
        assert (
            actual == length
        ), f"Expected {self._desc} to have length {length}, got {actual}"
        return self

    def has_length_greater_than(self, length: int) -> FluentAssertion[T]:
        actual = len(self._value)  # type: ignore[arg-type]
        assert (
            actual > length
        ), f"Expected {self._desc} to have length > {length}, got {actual}"
        return self

    def contains_item(self, item: Any) -> FluentAssertion[T]:
        """Assert *item* is in the collection."""
        assert item in self._value, (  # type: ignore[operator]
            f"Expected {self._desc} to contain {item!r}"
        )
        return self

    # ------------------------------------------------------------------
    # Dict / mapping
    # ------------------------------------------------------------------

    def has_key(self, key: str) -> FluentAssertion[T]:
        """Assert the dict *value* has *key*."""
        assert key in self._value, (  # type: ignore[operator]
            f"Expected {self._desc} to have key {key!r}"
        )
        return self

    def has_keys(self, *keys: str) -> FluentAssertion[T]:
        for key in keys:
            self.has_key(key)
        return self

    def key_value_equals(self, key: str, expected: Any) -> FluentAssertion[T]:
        """Assert ``value[key] == expected``."""
        self.has_key(key)
        actual = self._value[key]  # type: ignore[index]
        assert (
            actual == expected
        ), f"Expected {self._desc}[{key!r}] == {expected!r}, got {actual!r}"
        return self


class AssertableValue[T](FluentAssertion[T]):
    """Transparent value wrapper that also exposes fluent assertions."""

    @property
    def raw(self) -> T:
        """Return the wrapped value."""
        return self._value

    def __getattr__(self, name: str) -> Any:
        return getattr(self._value, name)

    def __getitem__(self, item: Any) -> Any:
        return self._value[item]  # type: ignore[index]

    def __iter__(self):
        return iter(self._value)  # type: ignore[arg-type]

    def __len__(self) -> int:
        return len(self._value)  # type: ignore[arg-type]

    def __contains__(self, item: Any) -> bool:
        return item in self._value  # type: ignore[operator]

    def __bool__(self) -> bool:
        return bool(self._value)

    def __str__(self) -> str:
        return str(self._value)

    def __repr__(self) -> str:
        return repr(self._value)

    def __eq__(self, other: Any) -> bool:
        return self._value == other

    def __ne__(self, other: Any) -> bool:
        return self._value != other


class AssertableModelMixin:
    """Adds fluent assertions to pydantic models and model fields."""

    def __getattribute__(self, name: str) -> Any:
        value = object.__getattribute__(self, name)
        if name.startswith("_"):
            return value

        # Keep generated model internals working with raw values.
        if name in {"actual_instance", "anyof_schema_1_validator", "anyof_schema_2_validator"}:
            if isinstance(value, AssertableValue):
                return value.raw
            return value

        fields = getattr(type(self), "model_fields", {})
        scalar_types = (type(None), bool, int, float, complex, str, bytes, Enum)
        if name in fields and not isinstance(value, AssertableModelMixin) and not isinstance(value, scalar_types):
            return AssertableValue(value, description=f"{type(self).__name__}.{name}")
        return value

    def equals(self, expected: Any) -> FluentAssertion[Any]:
        return AssertableValue(self).equals(expected)

    def not_equals(self, unexpected: Any) -> FluentAssertion[Any]:
        return AssertableValue(self).not_equals(unexpected)

    def is_none(self) -> FluentAssertion[Any]:
        return AssertableValue(self).is_none()

    def is_not_none(self) -> FluentAssertion[Any]:
        return AssertableValue(self).is_not_none()

    def is_true(self) -> FluentAssertion[Any]:
        return AssertableValue(self).is_true()

    def is_false(self) -> FluentAssertion[Any]:
        return AssertableValue(self).is_false()

    def is_instance_of(self, type_: type) -> FluentAssertion[Any]:
        return AssertableValue(self).is_instance_of(type_)

    def is_greater_than(self, other: Any) -> FluentAssertion[Any]:
        return AssertableValue(self).is_greater_than(other)

    def is_less_than(self, other: Any) -> FluentAssertion[Any]:
        return AssertableValue(self).is_less_than(other)

    def is_greater_than_or_equal_to(self, other: Any) -> FluentAssertion[Any]:
        return AssertableValue(self).is_greater_than_or_equal_to(other)

    def is_less_than_or_equal_to(self, other: Any) -> FluentAssertion[Any]:
        return AssertableValue(self).is_less_than_or_equal_to(other)

    def contains(self, substring: str) -> FluentAssertion[Any]:
        return AssertableValue(self).contains(substring)

    def starts_with(self, prefix: str) -> FluentAssertion[Any]:
        return AssertableValue(self).starts_with(prefix)

    def ends_with(self, suffix: str) -> FluentAssertion[Any]:
        return AssertableValue(self).ends_with(suffix)

    def matches_pattern(self, pattern: str) -> FluentAssertion[Any]:
        return AssertableValue(self).matches_pattern(pattern)

    def is_empty(self) -> FluentAssertion[Any]:
        return AssertableValue(self).is_empty()

    def is_not_empty(self) -> FluentAssertion[Any]:
        return AssertableValue(self).is_not_empty()

    def has_length(self, length: int) -> FluentAssertion[Any]:
        return AssertableValue(self).has_length(length)

    def has_length_greater_than(self, length: int) -> FluentAssertion[Any]:
        return AssertableValue(self).has_length_greater_than(length)

    def contains_item(self, item: Any) -> FluentAssertion[Any]:
        return AssertableValue(self).contains_item(item)

    def has_key(self, key: str) -> FluentAssertion[Any]:
        return AssertableValue(self).has_key(key)

    def has_keys(self, *keys: str) -> FluentAssertion[Any]:
        return AssertableValue(self).has_keys(*keys)

    def key_value_equals(self, key: str, expected: Any) -> FluentAssertion[Any]:
        return AssertableValue(self).key_value_equals(key, expected)


# ---------------------------------------------------------------------------
# HTTP-specific helper built on top of FluentAssertion
# ---------------------------------------------------------------------------


class ResponseAssertion:
    """Fluent assertions tailored for ``requests.Response`` objects."""

    def __init__(self, response: Any) -> None:
        self._response = response

    def has_status(self, code: int) -> ResponseAssertion:
        actual = self._response.status_code
        assert (
            actual == code
        ), f"Expected HTTP {code}, got {actual}. Body: {self._response.text[:200]}"
        return self

    def is_ok(self) -> ResponseAssertion:
        return self.has_status(200)

    def is_created(self) -> ResponseAssertion:
        return self.has_status(201)

    def is_client_error(self) -> ResponseAssertion:
        """Assert response is a 4xx client error."""
        actual = self._response.status_code
        assert (
            400 <= actual < 500
        ), f"Expected HTTP 4xx client error, got {actual}. Body: {self._response.text[:200]}"
        return self

    def is_unauthorized(self) -> ResponseAssertion:
        return self.has_status(401)

    def is_not_found(self) -> ResponseAssertion:
        return self.has_status(404)

    def is_server_error(self) -> ResponseAssertion:
        """Assert response is a 500 server error."""
        actual = self._response.status_code
        assert (
            actual == 500
        ), f"Expected HTTP 500 server error, got {actual}. Body: {self._response.text[:200]}"

        return self

    def body_contains(self, text: str) -> ResponseAssertion:
        assert text in self._response.text, (
            f"Expected response body to contain {text!r}. "
            f"Actual body: {self._response.text[:300]}"
        )
        return self

    def json_has_key(self, key: str) -> ResponseAssertion:
        __tracebackhide__ = True
        data = self._response.json()
        assert (
            key in data
        ), f"Expected JSON body to have key {key!r}. Got keys: {list(data)}"
        return self

    def json_key_equals(self, key: str, expected: Any) -> ResponseAssertion:
        data = self._response.json()
        assert (
            data.get(key) == expected
        ), f"Expected JSON[{key!r}] == {expected!r}, got {data.get(key)!r}"
        return self


# ---------------------------------------------------------------------------
# Public factory helpers
# ---------------------------------------------------------------------------


def assert_that[T](value: T, description: str = "") -> FluentAssertion[T]:
    """Entry point for fluent assertions.

    Example
    -------
    ::

        assert_that(pet["name"]).equals("Fido")
        assert_that(pets).is_not_empty()
    """
    return FluentAssertion(value, description)


def assert_response(response: Any) -> ResponseAssertion:
    """Entry point for fluent HTTP response assertions.

    Example
    -------
    ::

        assert_response(resp).is_ok().json_has_key("id")
    """
    return ResponseAssertion(response)
