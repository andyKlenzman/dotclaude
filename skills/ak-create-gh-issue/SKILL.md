---
name: ak-create-gh-issue
description: Create a well-structured GitHub issue using the `gh` CLI. Use this skill whenever the user wants to create, write, open, or file a GitHub issue — including bug reports, feature requests, and tasks. Trigger on phrases like "create an issue", "open an issue", "GitHub Issue erstellen", "Issue schreiben", "bug melden", "feature request", "report a bug", or any time the user describes a problem or idea they want to track in GitHub Issues. Always create the issue in English, regardless of the language the user writes in.
---

# Create GitHub Issue

Your job is to help the user create a clear, well-structured GitHub issue and submit it with `gh issue create`. The final issue is always written in English.

---

## Step 1: Understand the context

Before asking questions, gather what you can from context:
- Are we in a git repo? Which GitHub repo is the target?
- Has the user already described the issue (bug, feature, task)?
- Is there a specific repo they want to target (not the current one)?

If the target repo is ambiguous, ask. If we're clearly in a project directory, default to that repo.

Run this to check available labels and milestones from the repo (so you can offer real options):
```bash
gh label list --limit 50 2>/dev/null
gh milestone list 2>/dev/null
```

---

## Step 2: Gather information

Ask for anything missing — but only what's missing. Don't ask for things the user already told you. Keep it conversational; ask one thing at a time if multiple things are unclear.

Collect:
- **Issue type**: bug, feature request, task, question, or other
- **Title**: short, specific, action-oriented (English)
- **Description**: the problem or request (English)
- **Reproduction steps** (for bugs): what happened, what was expected
- **Labels**: offer the real ones from the repo, pick what fits
- **Assignees**: who should own this? (`@me` for themselves)
- **Milestone**: optional, from the real list

If the user just says something like "create an issue for the auth bug" — that's enough to start. Don't over-interview. Draft something reasonable and ask for confirmation.

---

## Step 3: Draft the issue body

Write the body in English using this template, adapted to the issue type:

**For bugs:**
```
## What happened
<concise description>

## Steps to reproduce
1. ...
2. ...

## Expected behavior
<what should happen>

## Environment
<relevant context: OS, version, etc. — only if relevant>
```

**For features / tasks:**
```
## Summary
<what and why, 2-3 sentences>

## Proposed solution
<concrete description of the change>

## Acceptance criteria
- [ ] ...
- [ ] ...
```

Adapt freely — skip sections that don't apply. Keep it tight and useful.

---

## Step 4: Preview and confirm

Show the user a clear preview:

```
Title:     <title>
Labels:    <labels or "none">
Assignees: <assignees or "none">
Milestone: <milestone or "none">

Body:
---
<body>
---
```

Ask: "Does this look good, or do you want to change anything?"

Make any adjustments they request before proceeding.

---

## Step 5: Create the issue

Once confirmed, build the `gh` command and run it:

```bash
gh issue create \
  --title "<title>" \
  --body "<body>" \
  [--label "<label1>" --label "<label2>"] \
  [--assignee "<login>"] \
  [--milestone "<name>"] \
  [--repo "<owner>/<repo>"]
```

Write the body to a temp file if it's long (avoids shell escaping issues):
```bash
cat > /tmp/gh_issue_body.md << 'EOF'
<body content>
EOF
gh issue create --title "<title>" --body-file /tmp/gh_issue_body.md [other flags]
```

After creation, show the user the issue URL.

---

## Notes

- Always write the issue title and body in English, even if the user writes in German or another language
- Prefer real label names from the repo over generic ones
- If `gh` is not authenticated or the repo isn't on GitHub, tell the user clearly and suggest `gh auth login`
- Don't ask for information you don't need — if it's a simple task, skip the elaborate template
