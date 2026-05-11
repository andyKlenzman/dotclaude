# GitHub Issue Draft Preview

## What would be created

**Command (not run):**
```
gh issue create \
  --title "Add dark mode support to the settings page" \
  --body "$(cat <<'EOF'
## Summary

Add dark mode support to the settings page so users can switch to a dark color scheme.

## Details

The settings page currently uses a fixed light theme. This issue tracks the work to detect and respect the user's system-level dark mode preference (via `prefers-color-scheme`) and/or provide an explicit dark/light toggle in the settings UI.

## Acceptance Criteria

- Settings page renders correctly in dark mode
- Dark mode state persists across sessions (stored in user preferences)
- Follows the same dark mode conventions used elsewhere in the app (if any)
- No visual regressions on the light-mode settings page
EOF
)" \
  --assignee "@me" \
  --label "enhancement"
```

---

## Issue Preview

**Title:** Add dark mode support to the settings page

**Assignee:** @me (Andy Klenzman)

**Label:** `enhancement` *(applied if the label exists in the repo)*

**Body:**

---

## Summary

Add dark mode support to the settings page so users can switch to a dark color scheme.

## Details

The settings page currently uses a fixed light theme. This issue tracks the work to detect and respect the user's system-level dark mode preference (via `prefers-color-scheme`) and/or provide an explicit dark/light toggle in the settings UI.

## Acceptance Criteria

- Settings page renders correctly in dark mode
- Dark mode state persists across sessions (stored in user preferences)
- Follows the same dark mode conventions used elsewhere in the app (if any)
- No visual regressions on the light-mode settings page

---

> Note: Could not verify whether the `enhancement` label exists in this repo (Bash tool unavailable). The `--label "enhancement"` flag will be included; `gh` will error if the label doesn't exist and it would need to be created first with `gh label create enhancement --color 84b6eb`.
