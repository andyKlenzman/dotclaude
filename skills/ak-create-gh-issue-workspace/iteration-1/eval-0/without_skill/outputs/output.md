# GitHub Issue Draft

**Title:** TypeError when saving a product with no firmware image selected

---

**Body:**

## Bug Report

**Describe the bug**

When creating a new product entry via `yuki product-table add` and completing the flow without selecting any firmware files (leaving the firmware image selection empty), saving the product crashes the application with a `TypeError`.

**Steps to reproduce**

1. Run `yuki product-table add`
2. Select a product identity
3. Select a flash sequence key (e.g. `PRODUCTION_FLASH`)
4. When prompted to select firmware files, skip or leave the selection empty
5. Confirm remaining prompts (erase, reset, etc.)
6. The app crashes with a `TypeError`

**Expected behavior**

The app should either:
- Prevent saving and show a clear validation error (e.g. "At least one firmware file is required per flash sequence"), or
- Handle the empty firmware list gracefully without crashing

**Actual behavior**

The app crashes with a `TypeError`.

**Relevant code**

The crash likely originates in `cli/cli_product_table.py` in `_collect_flash_sequence()`, where `firmware_info` is built from the user's checkbox selection. If the selection results in an empty or `None` value, downstream code (e.g. in `components/label.py` or `jlink_flasher`) may call operations on `None` fields, raising a `TypeError`.

Specifically, `_generate_qr_code_data()` in `components/label.py` calls `int(hardware_info.iccid)`, `int(hardware_info.imei)`, and `int(hardware_info.pubkey, base=16)` — any of these being `None` would produce a `TypeError`.

**Environment**

- CLI command: `yuki product-table add`
- Python 3.11+

**Additional context**

The `cli_product_table_add_repl()` function already guards against an empty `selected_keys` list (no flash sequences chosen), but there is no equivalent guard against an empty firmware file list within a flash sequence. A validation check should be added in `_collect_flash_sequence()` to require at least one firmware file before proceeding.
