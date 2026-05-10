---
name: ak-experience-interview
description: Conduct structured interviews to uncover missing professional experience details using STAR methodology.
---

# Purpose

Generate targeted interview questions that help uncover missing details about professional experiences.

Use this skill when:

- experience archives are incomplete
- resumes contain vague bullets
- metrics are missing
- projects are underexplained
- stronger stories are needed for future resumes

This skill creates better source material for future experience extraction.

It does NOT create resumes.

---

# Inputs

The user may provide:

- `/market_analysis/`
- `/experience/`
- `/resume_archive/`
- specific resumes
- project documentation
- notes
- role names

At least one source should be provided.

---

# Process

## 1. Review available materials

Identify:

- vague bullets
- missing metrics
- unclear scope
- missing leadership examples
- weak technical explanations
- missing business outcomes
- incomplete project descriptions

---

## 2. Review market expectations (optional but preferred)

If market analysis exists:

prioritize stories that align with:

- leadership
- technical depth
- communication
- execution
- ownership
- ambiguity handling
- measurable impact

---

## 3. Generate targeted interview questions

Questions should uncover:

### Situation
What problem existed?

What was broken?

Who was involved?

Why did this matter?

---

### Task
What were you specifically responsible for?

What constraints existed?

What was your ownership?

---

### Action
What did you personally do?

What tools did you use?

How did you make decisions?

Who did you collaborate with?

---

### Result
What changed?

What metrics improved?

What business impact occurred?

What happened afterward?

---

## 4. Push deeper

If answers are vague:

ask follow-up questions until specifics emerge.

Example:

"Improved efficiency"

→ By how much?

→ For how many users/customers?

→ Over what timeframe?

---

# Output

Create:

`/interviews/[role_name]-interview.md`

Structure:

# Missing Information Identified

# Interview Questions

## Leadership Questions

## Technical Questions

## Communication Questions

## Business Impact Questions

## Project-Specific Questions

# Follow-Up Questions

---

# Rules

Ask highly specific questions.

Avoid generic behavioral interview prompts.

Prioritize uncovering measurable outcomes.

Do not fabricate missing details.

The goal is to create stronger source material for future experience documents.