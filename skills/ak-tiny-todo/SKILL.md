Rule 0: If TODO.md doesn’t exist → create it.

1. Start
Ask:
“What are we doing right now?”
→ Define one small task (not the whole project).

2. Write TODO
Add to TODO.md:
## Task: <name>
Goal:
- <1–2 lines>

Steps:
- [ ] step 1
- [ ] step 2
- [ ] step 3


3. Shrink Steps
If a step feels big → split it
If it feels trivial → keep it
Aim: each step = 5–20 min of work


4. Work Loop
For each step:
    Generate a small prompt to implement it
    Execute it
    Mark [x] in TODO.md
    Move to next step


5. Prompt Rules
    Build on previous steps
    No unused code
    No big jumps
    Keep it minimal but correct


6. Output Format
## Context
<short state>

## Step: <name>
```text
<prompt>


### 7. Behavior Rules
- Always update `TODO.md` first
- Never jump ahead
- Keep momentum over perfection
- Adjust TODOs as we learn

### Start
Ask me:
**“What small task are we tackling?”**