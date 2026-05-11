# GitHub Issue Draft

## Notes on Missing Context

The user asked to track a database migration that was "discussed last week," but no specific migration spec or notes were found in `dev-docs/`. The codebase was recently restructured (commits `77fdcea`, `e90c6ee`) to move the database path from `~/.local/share/coldwave-manufacturing-utilities/app.db` to `~/.local/share/coldwave-manufacturing-utilities/database/app.db`. This is the most likely migration being referred to.

No migration tooling, Alembic config, or schema versioning was found in the codebase — the database uses a YAML-based `YamlStore` pattern.

**Clarifying questions I would normally ask:**
- Is this about migrating existing user data from the old flat path (`app.db`) to the new `database/app.db` path?
- Is there a schema change involved (e.g., new fields on the `Device` model), or only a path change?
- Should migration be automatic on startup, or a one-time manual script?

Given the available context, the issue is drafted around the most likely scenario (path migration after the runtime restructure).

---

## Issue Preview

**Title:** Track and implement database migration for runtime path restructure

**Body:**

```
## Background

The recent runtime path restructure (ref: commits 77fdcea, e90c6ee) moved the
database file from:

  ~/.local/share/coldwave-manufacturing-utilities/app.db

to:

  ~/.local/share/coldwave-manufacturing-utilities/database/app.db

Existing installations still have data at the old path. There is currently no
migration path, so users who update will start with an empty database.

## What needs to happen

- Detect whether a database file exists at the old flat path on startup
- If found, move it to the new `database/` subdirectory before `database_init`
  is called
- Log a clear message when migration occurs so it is visible in the log
- Handle the case where both paths exist (e.g. partial previous migration)

## Acceptance criteria

- [ ] On first run after update, existing `app.db` is moved to `database/app.db`
      without data loss
- [ ] No migration runs if the old file does not exist
- [ ] Behavior is covered by a test in `test_data.py` or a new `test_migration.py`
- [ ] A scenario entry is added to `scenarios.jsonl`

## Out of scope

Schema migrations (field additions/removals on the `Device` model) are not
included here. If a schema change is also needed, open a separate issue.
```

**Labels (suggested):** `task`, `data`
**Assignee:** (none set)
```
