Title:     TypeError when saving a product with no image
Labels:    bug
Assignees: none
Milestone: none

Body:
---
## What happened

Saving a product that has no image set causes the app to crash with a `TypeError`. The error occurs when the user clicks "Save" on a product form where the image field has been left empty.

## Steps to reproduce

1. Open the product creation or editing form
2. Leave the image field empty (do not select an image)
3. Click "Save"

## Expected behavior

The app should save the product successfully without an image. An empty/missing image should be treated as a valid state (e.g. `None` or an empty string), not raise a `TypeError`.

## Environment

No specific environment noted — reproducible on any platform where a product can be created without an image.
---
