from __future__ import annotations

import argparse
from pathlib import Path
import re


def _replace_patterns(text: str) -> str:
    updated = text

    # Replace constrained list helper with typing list while preserving item type.
    updated = re.sub(r"\bconlist\(([^)]+)\)", r"List[\1]", updated)

    # Replace strict constrained strings with StrictStr + Field constraint.
    updated = updated.replace(
        "constr(strict=True, min_length=1) = Field(...)",
        "StrictStr = Field(..., min_length=1)",
    )

    # Remove deprecated helpers from pydantic import lists.
    updated = re.sub(r",\s*conlist", "", updated)
    updated = re.sub(r",\s*constr", "", updated)

    return updated


def _process_file(file_path: Path) -> bool:
    original = file_path.read_text(encoding="utf-8")
    updated = _replace_patterns(original)
    if updated != original:
        file_path.write_text(updated, encoding="utf-8")
        return True
    return False


def main() -> int:
    parser = argparse.ArgumentParser(description="Normalize generated pydantic types for v2.")
    parser.add_argument("--target", required=True, help="Target package directory, e.g. ./openapi_client")
    args = parser.parse_args()

    root = Path(args.target)
    if not root.exists():
        return 0

    changed = 0
    for py_file in root.rglob("*.py"):
        if _process_file(py_file):
            changed += 1

    print(f"postprocess_pydantic_v2: updated {changed} files under {root}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
